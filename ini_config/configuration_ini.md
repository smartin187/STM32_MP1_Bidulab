# Configurer le STM32 + personalisation

La configuration de l'interface weston et d'autre paramètre comme le clavier (azerty) se font dans le fichier `~/.config/weston.ini`.

> Par défaut ce fichier n'éxiste pas, créer le pour configurer.

Utiliser le fichier `weston.ini` dans le repository pour avoir un exemple.

Si vous shouhaitez seulement mettre le clavier en azerty :

```ini
[keyboard]
keymap_layout=fr
```

L'exemple de ini ajoute aussi un fond d'écran et un bouton "arrêt" dans la bare de launcher. Si vous utiliser ce fichier, copier aussi l'image de fond d'écrant et le fichier `arret.sh`.
