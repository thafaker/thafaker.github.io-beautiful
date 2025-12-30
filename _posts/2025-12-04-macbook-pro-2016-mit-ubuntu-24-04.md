---
layout: post
title: "MacBook Pro 2016 mit Ubuntu 24.04"
date: 2025-12-04 20:35:54 +0100
author: Jan Montag
tags: ["macbookpro2016"]
permalink: /macbook-pro-2016-mit-ubuntu-24-04/
---


![](/img/mbp_2016_linux.jpg)
<figcaption>Mein MacBook Pro 2016 Touch Bar mit Ubuntu 24.04 und Thunderbolt LAN Adapter</figcaption>

[Stell sich heraus](https://janmontag.de/linux-auf-dem-macbook-pro-2016), dass Linux auf dem **MacBook Pro 2016** sogar ganz hervorragend läuft, bis auf die TouchBar und das WLan, um das man sich aber mit einem beherzten <code>sudo apt update && sudo apt upgrade -y</code>* kümmern kann. Wenn man wie ich einen LAN Adapter für Thunderbolt besitzt. [Here](https://dev.to/cmiranda/linux-on-macbook-pro-2016-1onb) for further advice.

*Herzlichst von meinem Macbook Linux gesendet*

### WLan unter Linux mit Macbook Pro 2016 13" toucbar
Ihr müsste eine Datei herunter laden und sie in eine bestimmtes Verzeichnis kopieren. Fortan wird beim Boot dieses geladen.

* Download [diese Datei](https://gist.githubusercontent.com/cristianmiranda/6f269797b62076c3414c3baa848dda67/raw/6508ff1f7ae10f45756d1c7437619a529f0a00ad/brcmfmac43602-pcie.txt)
* Und dann aus dem Ordner: cp brcmfmac43602-pcie.txt /lib/firmware/brcm


<small>* Ja, wenn dann richtig, ohne zu gucken!</small>

#macbookpro2016
