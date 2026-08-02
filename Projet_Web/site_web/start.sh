#!/bin/sh
# Ce script permet de lancer le serveur html.

# Ce script doit être exécuté depuis le répertoire où est index.html

# Le port est 8000

python3 -m http.server 8000   # lancer le serveur web sur le port 8000
