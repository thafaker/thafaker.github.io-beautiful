---
layout: post
title: "Dinge und Sachen "
date: 2025-10-26 09:20:14 +0100
author: Jan Montag
tags: ["ghost", "server", "uberspace"]
permalink: /dinge-und-sachen/
---


Also hier sind mehrere Dinge passiert, alles davon war jedoch *spooky*. Zu Beginn stand meine Entscheidung, meine Domain thahipster.de (4200 Posts, Content seit 2005) mit meiner Domain HerrMontag.de zu "mergen" und die bisherigen Inhalte [dort](https://herrmontag.de/hallo-freunde-eine-announcement/) jetzt da zur Verfügung zu stellen, um nicht mehr den Aufwand der doppelten Server-Pflege mit allem was daran hängt, fortzuführen. Und so viel Content gibt es auf beiden Websites nicht, kommerzielle Absichten erst recht nicht, aber die Lust darauf hin und wieder etwas zu schreiben, sodass ich gut damit leben kann beides zu vereinen.

* [thahipster.de](https://thahipster.de) - Mein Techblog Content
* [HerrMontag.de](https://herrmontag.de) - Meine eher privates Weblog

Gesagt, getan…

## Vorgehensweise Migration thaHipster / HerrMontag

Ich habe alle Posts aus thahipter.de extrahiert und mit Herrmontag.de gemerged, sodass der Content unverändert, aber unter neuer Domain, auf herrmontag.de sichtbar wird. Neben den dort schon vorhandenen herrmontag-Beiträgen. HerrMontag.de wurde also erweitert. Dann habe ich all den Content, also hauptsächlich Bilder *diesdas* übertragen. Das waren nach all der Zeit natürlich diverse Gigabytse und diese dann wieder zusammen geführt und verfügbar gemacht. Das hat an vielen verschiedenen Stellen zu großen und kleinen Problemen geführt, von Berechnungen über Kein Platz mehr auf der Platte bis hin zu alles doppelt, doch am Ende hat alles geklappt.

Dann habe ich all die Dienste auf dem alten Server herunter gefahren und die NGINX-Config Datei so verändert, dass alle Anfragen auf thahipster.de nahtlos an HerrMontag.de (mit einem <code>301 - moved permanently</code>) weiter geleitet werden. Und was soll ich sagen? Das funktioniert.

HerrMontag.de erreicht nun mit all dem Content einen Desktop-Score von Leistung: 97 (aber nur einen mobile Score von 79) auf [Google Pagespeed](https://pagespeed.web.dev/analysis/https-herrmontag-de/do4l0gjadp?form_factor=mobile) (aber Nahezug 100% unter Desktopansicht) sowie 91 Punkte im **Yellow Labs Tools Benchmark**. 

![](/img/yellowlabs.png)

## Weiterleitung

Bisheriger Beitrag auf thahipster.de: [https://thahipster.de/amiga-os-3-3-in-2026/](https://thahipster.de/amiga-os-3-3-in-2026/) - leitet natlos auf herrmontag weiter, Inhalte verfügbar.

## Spooky things at janmontag.de

Und dann gab es plötzlich arge Probleme mit meinem Uberspace. SSH-Verbindungen wurden gekappt, Dienste die gestoppt waren wurden plötzlich von allein wieder gestartet und so richtig konnte ich mir nicht erklären, was da passiert ist. Zumal ich eigentlich nichts geändert habe. 

Was mir allerdings bereits aufgefallen und wofür ich noch keine Erklärung finden konnte: sämtliche Posts von BSKY die hier in janmontag.de als meinem .microblog landen, wurden doppelt importiert. Es gab aber keinen Grund dafür.

[…]

Nach ganz viel *diesdas* und *hinundher* habe ich entdeckt, dass dieses Python-Script (mittlerweile 24 KB groß) in doppelter Ausführung lief. Als Cronjob und als Service. Deshalb wurde es immer mal getötet (das heißt so). Deshalb gab es die Beiträge doppelt. Deshalb lief der ganze Uberspace holprig bis gar nicht (Speicher, Puffer…). 
Aber jetzt funktioniert hoffentlich wieder alles.

*Es bleibt spannend*

#server #uberspace #ghost
