#!/bin/bash

# Konfiguration
SOURCE_DIR="./"           # Ordner mit den Bildern
BACKUP_DIR="./backup"     # Backup-Ordner für Originale
PROCESSED_LOG="$BACKUP_DIR/processed_images.log"  # Log-Datei

# Backup-Ordner und Log-Datei erstellen
mkdir -p "$BACKUP_DIR"
touch "$PROCESSED_LOG"

# Funktion: Prüft, ob Datei bereits verarbeitet wurde
is_processed() {
  grep -qFx "$1" "$PROCESSED_LOG"
}

# Hauptverarbeitung
find "$SOURCE_DIR" -maxdepth 1 -type f \( -iname "*.jpg" -o -iname "*.png" \) | while read -r img; do
  filename=$(basename "$img")
  
  # Nur neue Dateien verarbeiten
  if ! is_processed "$filename"; then
    echo "Verarbeite: $filename"
    
    # Original ins Backup kopieren (nur wenn nicht vorhanden)
    cp -n "$img" "$BACKUP_DIR/"
    
    # Größe anpassen (max. 1280px, nur verkleinern)
    mogrify -resize "640x640>" -quality 85 -strip -path "$SOURCE_DIR" "$img"
    
    # JPEG-Optimierung
    if [[ "$filename" =~ \.jpg$ ]]; then
      jpegoptim --max=85 --strip-all --overwrite "$img"
    fi
    
    # PNG-Optimierung
    if [[ "$filename" =~ \.png$ ]]; then
      pngquant --quality=80-90 --force --ext .png --skip-if-larger "$img"
      optipng -o7 -clobber "$img" >/dev/null
    fi
    
    # Als verarbeitet markieren
    echo "$filename" >> "$PROCESSED_LOG"
  fi
done

echo "Cron-Job abgeschlossen: $(date)"
