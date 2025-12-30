---
layout: post
title: "B-A-C-K - The Great Rendevouz"
date: 2025-10-02 21:50:50 +0200
author: Jan Montag

permalink: /b-a-c-k-the-great-rendevouz/
---


Der **Song** *B-A-C-K* stammt von den **Front 242** Epigogen [*Mastertune*](https://open.spotify.com/intl-de/track/4zhr2un0MLbOnlHAYbObEe?si=2905a485662647bf), welche dereinst in den 90er oder 2000er einige Erfolge im deutschsprachigen Raum vorweisen konnten. Aber das ist gar nicht Gegenstand dieses Blogartikels. Denn hier geht es um etwas ganz anderes, aber auch ähnliches - nämlich die Rückkehr meines Weblogs.

Ich betreibe *janmontag.de* nebst sämtlicher *Progammierübungen* auf einem **Raspberry-PI** 5 mit 8 GB-Ram und 2 TB SSD. Allerdings hat mir mein Internet-Anbieter **PYUR** überaschenderweise urplötzlich die Möglichkeit abgedreht, mein Heim-Netz von außen erreichen zu können. Folgerichtig kann ich nicht mehr selber hosten.

Es ärgert mich, einen so simplen Dienst wie ein winziges .micro-Weblog auf einem richtigen Hoster betreiben zu müssen. Aber wie dem auch sei, das war der Grund für die Downtime auf janmontag.de und ich wollte euch darüber erzählen.

**Und meine Lösung**? Ich habe all meine Fähigkeiten zusammen genommen und bin auf einen Uberspace ([Link](https://uberspace.de/de/)), großartig Jungs, umgezogen. Also ich kenne Uberspace schon lange, aber nicht hierfür. Und habe alle meine Scripts, groß und klein, Python und Shell, übertragen und angepasst und jetzt läuft es (fast) wie zuvor:

* Writefreely 0.16.0
* Fathom 1.3.1
* GoToSocial Nomenklatur
* ISSO Kommentar-System
* *diesdas*…

[**UPDATE**] Webmention funktionieren noch nicht. Um welche zu senden habe ich ein [Python-Script](https://janmontag.de/mittwoch-25) geschrieben, was die neue Beiträge nach Links durchsucht und diese nach einem Endpoint abklappert, aber auch empfangen geht nicht.

[**UPDATE 2**] Webmention funktionieren nun auch wie gewünscht.

Bis bald. janmontag.de - ***Hosted on Asteroids***

![](https://janmontag.de/img/uberspace.svg)

[**UPDATE 3**] Ich bin von Uberspace wieder auf meinen Raspberry Pi 5 in meinem Wohnzimmer umgezogen. Ich finde das schön. Nahezu passend für ein privates .microblog.
