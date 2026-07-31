# Présentation de la carte STM32MP135F-DK

Dans ce guide vous allez découvrir la carte STM32MP135F-DK, qui est une carte de développement pour le processeur STM32MP1.

## Le processeur STM32MP1

Le processeur STM32MP1 est le CPU présent dans la carte. C'est un processeur ARM 32 bits. Les architectures supporté sont `armhf` et `armel`.

Ce processeur est limité en ressource, mais il est prévue pour faire tourner un système Linux embarqué et minimaliste : Open ST Linux.

## Informations sur la carte

- Processeur : 1 GHz, ARM 32 bits
- Écran intégré : 480×272 pixels LCD
- Wifi et Bluetooth low energy intégré
- 2x2 USB A + 1 USB C
- 2x Ethernet
- Micro SD (généralement utiliser par l'OS)
- USB C "Power in" pour l'alimentation. **Attention a ne pas confondre avec l'USB C qui n'est pas prévu pour l'alimentation.** "Power in" est écrit a coté du port USB C d'alimentation.
- GPIO (connections pour des périphériques externes)
- Micro USB ST-Link (pour déboguage avancé)

### Composent

__Avant__
![STM32-2](images/STM32-2.png)

__Arrière__
![STM32-1](images/STM32-1.png)

#### Ecrant

Un écrant (tactile), utiliser par l'OS.

4.3" 480×272 pixels LCD

#### GPIO

Les broches GPIO permettent de connecter des périphériques externes à la carte.

#### Bouton utilisateur

Vous pouvez configurer ces boutons.

#### ST Link

Un port Micro USB pour déboguage.

#### Bouton de control

3 boutons en dessous de l'écrant.

Le bouton "Wake up" permet de ralummer la carte après un arrêt via `shutdown`.

#### Sélécteur de boot

Contrairement à un ordinateur classique, pour choisire le périphérique de boot, cela ne se fait pas via un bios mais via ces interrupteurs.

> En général, le boot s'éffectue sur la micro SD. Souvent, l'interrupteur est déjà configuré pour la micro SD.

> Attention : il n'y a pas marqué le nom des périférique mais uniquement `boot0`, `boot1` et `boot2`.

__`boot1` est la micro SD__

#### USB C Alimentation

Cette USB C doit être utiliser pour alimente la carte. Il y a écrit "Power in" a coté.

Attention d'avoir une alimentation suffisante pour le STM32.

#### 2x Ethernet

Cette carte contient deux port Ethernet.

#### Connection module caméra

Le module caméra est connécter via un nape.

Le module caméra est généralement fournit avec la carte.

#### CPU

Le CPU est un processeur ARM 32 bits, conçu par ST.

#### RAM

#### Micro SD

Un slot pour micro SD. Très souvent utiliser par l'OS (Open ST Linux).

#### 2x2 USB A

4 port USB A, pour connecter des périphériques USB.

> Pour l'utilisation d'Open ST Linux, il est néssaire d'avoir un clavier et généralement une souris (même si l'écrant est tactile).

#### USB C

Un port USB C, pour connecter des périphériques USB.

> Ne pas le confondre avec l'USB C d'alimentation. L'USB C d'alimentation est marqué "Power in".

## Documentation officiel

[Présentation STM32MP1-DK](https://www.st.com/en/evaluation-tools/stm32mp135f-dk.html#overview)

[Documentation officiel](https://www.st.com/resource/en/data_brief/stm32mp135f-dk.pdf)

[Schéma électrique](https://www.st.com/resource/en/schematic_pack/mb1635-mp135f-e02-schematic.pdf)


