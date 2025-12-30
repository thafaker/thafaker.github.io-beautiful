---
layout: post
title: "Uberspace und Speicherfraß"
date: 2025-11-03 22:23:02 +0100
author: Jan Montag
tags: ["python", "uberspace"]
permalink: /uberspace-und-speicherfrass/
---


Ich habe bereits neulich darüber berichtet, dass meine Scripts auf Uberspace nicht mehr entsprechend ihrer Bestimmung liefen und meist nach kurzer Zeit, ohne Logausgabe, getötet wurden. Ich habe mein Bluesky-Import Script, geschrieben in Python, jetzt noch mal überarbeitet und den Speicherfraß entfernt. Deshalb seht ihr auch einen [Test Import](https://janmontag.de/monday-03-11-25-21-37) eines aktuellen Urlaubbildes nebst dazugehörigem Bsky-Skeet.

Das scheint [funktioniert](https://bsky.app/profile/herrmontag.de/post/3m4qurnyf6k23) zu haben. Mein Script läuft also wieder und der gewünschten Automatisierung scheint keine Grenze mehr gesetzt zu sein.

Warum ich das tue? Bluesky Inhalte sind meine Inhalte. Sind meine Posts. Ich mag diese Social Media Silos nicht, nutze Bluesky aber, weil ich mich damit anfreunden konnte, nachdem ich Twitter den Rücken gekehrt hatte. Aber ich möchte meine Posts und meine Bilder auf meinem Webspace. Deshalb befinden sich alle Beiträge auch in diesem Writefreely-Blog und die neuen kommen hinzu. Damit das automatisch funktionert, habe ich das erwähnte Python-Script geschrieben.

* Es loggt sich alle 10 Minuten ein, schaut nach neuen Beiträgen auf Bsky.
* Es lädt den neuen Skeet und ebenso die etwaigen eingebetteten Medien
* Diese speichert es auf meinem Webspace und integriert sie via Markdown in den Post
* der aus dem Skeet generiert wird und via API 
* in mein Wirtefreely Weblog gepostet wird.
* Etwaige Tags werden dabei in den Titel übernommen. 
* Der Titel ist dabei ein Datum, weil ich das sehr Logbuch-mäßig finde.

Ich mag Writefreely sehr. Writefreely kann aber von sich nicht mit Bildern umgehen, was ich für ein Weblog jedoch als etwas Grundsätzliches ansehe. So funktioniert es aber ganz gut.

#python #uberspace

<small>Geschrieben auf meinem Powermac G5.</small>
