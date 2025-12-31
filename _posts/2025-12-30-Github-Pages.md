---
layout: post
title: "Github Pages und mein vielleicht neuer Workflow"
subtitle: "Ich migriere janmontag.de zu Github.com und Jekyll"
date: 2025-12-30 20:49:02 +0100
tags: [test, github]
author: Jan Montag
---

{: .box-warning}
**Warnung:** Hier wird eines Tages in der Farbe grün stehen, dass es geklappt hat. Die Migration auf Jekyll und Github-Pages. Dann habe ich auch die Domain umgezogen und alles sollte funktionieren, nebst Bildern und Kommentaren. Aber der Aufwand ist schon enorm.

Ich nutze **Github Pages** und **Jekyll**. Ich deploye die Seite von meinem Computer zu Hause auf Github.com, dort wird automatisch im Hintergrund gerendert und meine Website *gebaut* und deployd, sodass sie dann online ist. 

Das funktioniert ganz gut, hat aber den Nachteil, dass es nur von meinem Computer (mit Terminal) aus funktioniert. *Aber das stimmt nicht ganz*. Ich kann via Github.com auch einfach eine Seite anlegen und entspricht diese dem Standard, dann wird sie nach dem Speichern ebenfalls gerendert und deployd, so als würde ich es im Terminal tun. 

{: .box-warning}
Auch kann ich Artikel, die schon bestehen, einfach editieren. Da ich sowieso in Markdown schreibe, sollte das kein Problem sein. **Nachteil**: Bilder. Der Bilder-Upload ist natürlich von unterwegs (vor allem via Handy) nicht gut lösbar.

Kann ich eigentlich auch ohne großem Aufwand ein automatisiertes Deployment auf meinem eigenen Server laufen lassen? So wie es mit Github-Pages funktioniert?

<details markdown="1">
<summary>Was fehlt? (Klick hier!)</summary>
* https - htst broken (HTTP Strict Transport Security)
* Kommentare funktioneren noch nicht
* URLs sind noch nicht korrekt alt - neu
* Bilder URLs stimmen auch noch nicht
</details>

{: .box-error}
Das funktioniert alles nicht.
