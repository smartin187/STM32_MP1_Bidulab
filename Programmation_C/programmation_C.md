# Programmer en C

Il est possible de programmer en C sur un ordinateur et de cross-compiler pour ARM32 (armhf), l'architecture du `STM32`.

Il faut utiliser le cross-compiler `arm-linux-gnueabihf-gcc` pour compiler le code C pour l'architecture ARM32.

## Compilation

Exécuter dans un terminal :
```bash
arm-linux-gnueabihf-gcc programme.c
```

Cela génèrera un binaire ARM32 nomé `a.out`.

Vous pouvez vérifier l'architecture du binaire généré avec la commande `file` :
```bash
file a.out
```

## Utilisation sur STM32

Copier le fichier sur le STM32 (via la microDS ou autre), puis exécuter avec `./a.out` (ou autre nom du fichier).

## Exemple

Dans le dossier `Exemple` vous trouverez un programme C que vous pouvez executer sur STM32.
