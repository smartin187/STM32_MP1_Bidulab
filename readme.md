# Guide sur STM32 MP135F-DK

Ce repository contient un guide pour utiliser le STM32 MP135F-DK avec Linux embarqué Open ST Linux.

Open ST Linux : [https://www.st.com/en/embedded-software/stm32-mpu-openstlinux-distribution.html](https://www.st.com/en/embedded-software/stm32-mpu-openstlinux-distribution.html)

> Si vous avez besoin de transférer des fichiers, utiliser un clé USB ou directement sur la mico SD (mais néssessite ortinateur avec Linux).

Vous aurez en plus des [projet a faire sur STM-32](#projet-stm-32).

## Introduction

Dans ce chapitre vous n'allez pas encore utiliser le STM32, mais vous allez découvrir cette carte. Si vous connessais déjà, allez directement à la partie [Configuration](#configuration).

### Présentation de la carte STM32MP135F-DK

[Présentation de la carte STM32MP135F-DK](introduction/présentation_STM32MP1.md)

### Présentation de Open St Linux

[Présentation de Open St Linux](introduction/présentation_open_st_linux.md)

## Configuration

[Configuration de `~/.config/weston.ini`](ini_config/configuration_ini.md)


## Connection wifi

[Connection au wifi + ajout adress ip](Connection_wifi/connection_wifi.md)

## Réglage de l'heure

> Cette étape est nésseraire pour utiliser `apt`

[réglage de l'heure](réglage_heur/réglage_heur.md)

## Connection ssh

La connection ssh est très utile pour utiliser le STM32 à distance ou pour transférer des fichiers.

[connection ssh](connection_ssh/connection_ssd.md)

## Outil utiles

Certin outil peuvent être utile sur le STM32. Voici comment les installer.

[Installation d'outil](outil_utiles/outil_utiles.md)

## Programmation en C

> Sur STM32 avec Open ST Linux, vous devez cross-compiler en ARM32 (armhf ou armel).

> Un interpréteur Python3 est aussi disponible, plus facile a utiliser car pas de cross-compilation.

[Programmation en C](Programmation_C/programmation_C.md)


## Projet STM-32

Voici d'autre projet que vous pouvez faire sur STM-32.

### Projet serveur HTML

Il est possible d'ébergé un serveur sur STM-32 pour éberger un site web.

[Projet serveur HTML](Projet_Web/projet_web.md)

