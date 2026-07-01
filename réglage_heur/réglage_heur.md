# Réglage de l'heur + mise a jour avec `apt`

Par défaut, l'heure du STM32 est en `2022`. Cela pose problème notament avec `apt` qui a besoin d'avoir l'heure correct.

Il faut commencer par réglé l'heure manuellement, pour installer avec apt un packet de mise à jour de l'heure.

## Réglage manuel

Ecrivait la commande avec l'heure actuelle (Il peut y avoir un faible décalage...)

```bash
date -s "2026-06-29 12:00:00"
```

Vous pouvez vérifier l'heure avec la commande suivante :

```bash
date
```

## Mise à jour `apt`

>Les commandes suivantes doive être éxécuter en administrateur (`su`)

Metter les packet a jour :

```bash
apt update

# optionnel (mise a jour du systeme):
apt full-upgrade
```

Vous devez ensuite installer le packet `ntpdate` :

```bash
apt install ntpdate
```

Faite ensuite :
```bash
ntpdate pool.ntp.org
```

>L'heure peut avoir un décalage du fuseau horaire, mais cela ne pose pas de probleme avec `apt`.

L'heure sera la bonne, en revanche, si vous arrêter le STM32, l'heure ne sera pas actualisé pendant ce temps. Regarder la [mise à jour automatique](#mise-à-jour-automatique).

## Mise à jour automatique

Dans le fichier `/etc/rc.local`, ajouter la ligne suivante avant `exit 0` (ou crée le fichier si il n'existe pas, avec la ligne `exit0` a la fin en plus de la ligne suivante) :

```bash
su -c "ntpdate pool.ntp.org"
```

Normalement, en redémadant le STM32, l'heure sera automatiquement mise à jour.

>Note : l'heure peut mettre du temps a se synchroniser, surtout si il y a d'autre commande dans `rc.local`, notament la connection wifi qui peut être obligatoire pour la mise a jour de l'heure...

