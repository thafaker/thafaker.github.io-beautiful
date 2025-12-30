#!/bin/bash

# Script beenden, wenn ein Befehl fehlschlägt, auf undefinierte Variable zugegriffen wird
set -euo pipefail

# Konfiguration
SOURCE_DIR="/home/jamo/dienste/writefreely-0.16.0/static/img"   # Pfad zu deinem Bildordner
PROCESSED_LOG="/home/jamo/logs/wf_processed_images.log"  # Log-Datei

# Log-Datei erstellen, falls nicht vorhanden
#touch "$PROCESSED_LOG"

# Funktion: Prüft, ob Datei bereits verarbeitet wurde
is_processed() {
    grep -qFx "$1" "$PROCESSED_LOG"
}

# Hauptverarbeitung
find "$SOURCE_DIR" -maxdepth 1 -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" \) | while read -r img; do
    filename=$(basename "$img")
    
    # Nur neue Dateien verarbeiten
    if ! is_processed "$filename"; then
        echo "Verarbeite: $filename"
        
        # Bild optimieren
        case "$filename" in
            *.jpg|*.jpeg)
                # JPEG: Größe anpassen und mit jpegoptim optimieren
                mogrify -resize "800x800>" -path "$SOURCE_DIR" "$img"
                jpegoptim --max=85 --strip-all --overwrite "$img"
                ;;
            *.png)
                # PNG: Zuerst mit pngquant (verlustbehaftet) komprimieren, dann mit optipng (verlustfrei) weiter optimieren
                pngquant --quality=80-90 --force --ext .png --skip-if-larger "$img"
                optipng -o2 -clobber "$img"
                ;;
        esac
        
        # Als verarbeitet markieren
        echo "$filename" >> "$PROCESSED_LOG"
        echo "Erfolgreich verarbeitet: $filename"
    fi
done

echo "Cron-Job abgeschlossen: $(date)"