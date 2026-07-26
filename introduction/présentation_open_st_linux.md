# Présentation de Open St Linux

Open ST Linux est une distribution minimaliste embarqué, qui peut être utiliser sur le STM32-MP1.

Elle est construite avec Yocto.

## Gestionnaire de paquet

Open ST Linux utilise `apt` pour installer des paquets. Mais attention : Open ST Linux n'utilise pas les dépôts officiels Debian/Ubuntu, mais un dépôt de ST. Pas tout les packet seront disponible sur ce dépot...

L'outil `dpkg` est donc installer si vous avez besoin d'installer des packages `*.deb` manuellement. Voir [installation d'application](#installation-dapplication).

## Interface graphique

Cette distribution a une interface graphique, qui est Wayland avec Weston. C'est donc une interface simple, mais elle permet quand même de faire des applications graphiques.

Noter que certaines application ne pourront pas fonctionner : les application utilisant X11. Dans la pluspart des distribution utilisant Wayland, il y a `XWayland` qui permet que les application X11 fonctionne sur Wayland. Open ST Linux, distribution minimaliste, n'a pas `XWayland`...

## Installation d'application

L'installation d'application peut être compliquer dans certain cas.

Pour installer une application, vérifier quelle sera suporté par le STM32 pour les ressource matériel.

Le STM32 a un processeur `ARM`, 32 bits. Les architecture supporté sont `armhf` et `armel`.

Si une application n'est pas disponible dans le dépôt ST, mais qu'elle est disponible en `armhf` ou `armel`, vous pouvez tenter de l'installer manuellement.

> Attention : certaines applications pourrait endomager votre système si il y a des conflits de dépendences. Soiyez prudent si il y a des dépendences.

### Installation

Il peut y avoir plusieurs méthodes pour installer une application.

> Noublier pas que pour les application graphique, il ne faut pas que l'application utilise `X11`.

#### Installation via `.deb`

Si l'application est disponible sur les dépôts officiels Debian/Ubuntu, vous pouvez télécharger le fichier `.deb` depuis un ordinateur puis le transférer sur le STM32 et enfin l'installer avec `dpkg`.

1) Télécharger le package :

**Option 1 : télécharger via apt :**
```bash
apt download <nom_du_package:armhf>
```

> Attention a bien installer le package en `armhf` ou `armel` via apt. Il est possible que vous deviez faire la commande `sudo dpkg --add-architecture armhf` pour ajouter l'architecture `armhf`, **mais attention de ne pas "polluer" votre système**. Vous pouvez sinon utiliser Docker pour télécharger. Sinon faite l'option 2.

**Option 2 : télécharger le packet en ligne :**

Vous pouvez aussi télécharger le package sur le site de Debian ou Ubuntu.

- [Installation via Debian](https://packages.debian.org/search?suite=stable&section=all&arch=any&searchon=names&keywords=package)
- [Installation via Ubuntu](https://packages.ubuntu.com/)

2) Installation sur STM32 :

```bash
dpkg -i <nom_du_package>.deb    # vous devez être en administrateur, utiliser la commande su pour ouvrir un terminal root.
```

> Soyez très prudent avec les dépendences ! Si des dépendences sont incompatible vous risquer d'endomager votre système !

#### Installation manuelle

Si vous avez moyen de récupérer les binaire Linux de l'application, vous pouvez les exécuter a la condition que le binaire soit `armhf` ou `armel`.

Dans ce cas, transférer seulement le/les binaire(s) sur le STM32 et les exécuter.

## Limitation

Cette distribution est minimaliste, certaines applications ou commandes ne sont pas installer par défaut. Certaines seront installable direcement avec le dépot ST, d'autre non.

Voici les principales choses a savoir :

### Pas de `sudo`

Cette distribution n'a pas la commande `sudo`.

Il n'est pas difficile pour autant d'éxécuter des commande administrateur.

Il faut utiliser la commande `su`, voici les possibilités :
1) Ecrire la commande `su`. Un terminal root s'ouvrira, vous pourrez éxécuter des commandes administrateur, mais attention, car toutes les commandes seront en root a partire de ce moment (jusqu'à ce que vous fermiez le terminal root).
2) Ecrire la commande `su -c "<commande>"`. Si vous voulez éxécuter une seule commmande en root, utiliser cette commande.

> Noter que si vous utiliser cette commande, si vous accéder au dossier personnel de l'utilisateur où vous avez éxécuter la commande, vous ne devez pas écrire `~`, car cela dirigera vers le dossier personnel de root. Utiliser les chemain complet dans ce cas...

### Pas de `XWayland`

Dans la pluspart des distribution utilisant Wayland, il y a `XWayland` qui permet que les application X11 fonctionne sur Wayland. Open ST Linux, distribution minimaliste, n'a pas `XWayland`...


