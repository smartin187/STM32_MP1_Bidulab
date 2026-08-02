# Projet web sur STM-32 MP1

Il est possible d'utiliser le STM-32 pour ébergé un serveur web.

Il y a plusieurs outils pour le faire, nous allons utiliser `python3` (car déjà installer sur le STM-32).

## Création et copie de l'HTML

Dans notre exemple nous allons utiliser un fichier HTML simple.

Vous le trouverais dans `site_web/index.html`.

> Vous pouvez créer votre propre HTML ou modifier celui-ci.

Copier le fichier `index.html` dans le répertoire `/home/weston/projet_web/` (copier le fichier via clé USB ou en utilisant la carte micro SD).

> Copier le fichier `start.sh` pour lancer le serveur plus facilement...

### Lancement du serveur web

Pour lancer le serveur web, nous allons utiliser `python3 -m http.server`.

Commencer par vous placer dans le répertoire du projet HTML, puis lancer la comande pour lancer le serveur :

```bash
cd /home/weston/projet_web/   # aller dans le projet
python3 -m http.server 8000   # lancer le serveur web sur le port 8000
```

> Si vous fermer le terminal où a était lancer le serveur, celui-ci s'arrêtera...

> Vous pouvez aussi utiliser le script `start.sh` pour lancer le serveur web. Il est dans le répertoire du projet HTML.

### Connection au serveur via un navigateur web

Pour tester votre serveur, vous pouvez utiliser un navigateur web sur votre ordinateur.

>Note: le serveur web est accessible en LAN, votre ordinateur doit être sur le même réseau...

#### Trouver l'adresse IP du STM-32

Il vous faut l'adresse IP du STM-32 pour vous connecter.

Dans un terminal du STM-32, écriver :

```bash
ip -4 addr show     # enlever -4 pour utiliser IPv6
```

Vous optiendrait plusieurs adresse IP. Pour trouver la bonne :
Si vous êtes connecter en Wifi, l'adresse IP sera dans la section `wlan0`. Il y a généralement écrit `inet` avant l'adresse IP. Si plusieurs adresse sont écrite, vous pouvez toutes les tester...


#### Connection via le navigateur web

Dans un navigateur web, écrivez :
```http
http://<adresse_ip>:8000
```

> Si vous avez changer le port lors du lancement du serveur, changez-le aussi sur le navigateur.

> Les limites de python3 pour le serveur est que seul `http` est disponible, pas `https`.

En cas de problème, allez voir la section [problème et debug](#probl%C3%A8me-et-debug).

### Problème et debug

Vous pouvez rencontrer plusieurs problème avec le serveur.

#### Mauvase adresse IP

Vérifier que vous avez mis dans votre navigateur la bonne adresse IP du STM-32.

> La commande `ip -4 addr show` affiche plusieurs adresse IP, pas toutes sont celle du STM32 !

#### Test de connection

Pour tester si votre ordinateur peut se connecter au STM-32, vous pouvez utiliser la commande `ping` dans un terminal de votre ordinateur.

```bash
ping <adresse_ip_STM32>
```

Si cela fonctionne c'est que le probleme vient plustot du serveur que de la connection...

#### Vérifier le log du serveur

Lors ce que vous lancer le serveur avec python, le log du serveur est dans le terminal. Vérifier que le serveur est bien actif et qu'il n'y a pas d'erreur.

> Dès qu'un appareil se connecte au serveur, un log est affiché. Vérifier la présence de ce log lorsque vous vous connectez via le navigateur web.

#### Tester serveur directement sur STM-32

Vous pouvez aussi tester le serveur directement sur le STM-32 :

```bash
curl http://localhost:8000
```

Si le contenu de la page HTML s'affiche, le serveur fonctionne, mais le probleme peut venir de la connection, notament si un pare-feu bloque...

