# Outil utiles

Dans ce chapitre vous allez pouvoir installer quelque outil (applications) pour faciliter l'utilisation.

Nous allons installer :
- [`nano`](#installation-de-nano)
- [`pip`](#installation-de-pip)
- [`python venv`](#installation-de-python-venv)

## Installation de Nano

Nano est un éditeur de texte en ligne de commande. Par défaut sur le STM32, `vi` est installer. Nano est plus simple a utiliser pour les débutants.

> Nano pourra aussi vous être utile si vous shouhaitez programmer sur le STM32 (légère coloration syntaxique).

Installer Nano via `apt`.

```bash
su # metter cette commande pour passer en root

apt update # optionnel, si vous n'avez pas fait de mise a jour depuis longtemps

apt install nano
```

Après, vous pouvez écrire la comande `nano`.

Dans l'éditeur, tout les raccourcis clavier (enregistrer, quitter...) sont écrit.


## Installation de Pip

Pip est un gestionnaire de paquet pour Python. Il permet d'installer des librairies Python.

> En général, il est possible d'installer des librairies Python sans `pip` mais via `apt`, en faisant la commande : `apt install python3-<librairie python>`.

Pour installer `pip`, il faut installer le paquet `python3-pip` via `apt`.

```bash
su # metter cette commande pour passer en root
apt update # optionnel, si vous n'avez pas fait de mise a jour depuis longtemps
apt install python3-pip
```

Après, vous pouvez installer des librairies Python.

> **Attention** : dans certain cas, écrire `pip` ne suffit pas, il faut utiliser `python3 -m pip`. Vous pouvez aussi essayer `pip3`.

### Installation de librairie Python

Pour installer une librairie Python (ou autre package Python), écriver la commande :

```bash
python3 -m pip install <nom de la librairie>
```

La commande suivante peut aussi fonctionner dans certain cas :

```bash
pip3 install <nom de la librairie>
```

## Installation de Python venv

Python venv est un module qui permet de créer des environnements virtuels Python. Cela permet d'isoler les dépendances d'un projet Python.

Pour installer `python3-venv`, il faut installer le paquet via `apt`.

```bash
su # metter cette commande pour passer en root
apt update # optionnel, si vous n'avez pas fait de mise a jour depuis longtemps
apt install python3-venv
```

Après, vous pouvez créer un environnement virtuel Python.

```bash
python3 -m venv .venv
```

Pour activer l'environnement virtuel :

```bash
source .venv/bin/activate
```

Pour désactiver l'environnement virtuel :

```bash
deactivate
```
