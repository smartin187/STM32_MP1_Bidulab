# Connecter le STM32 au wifi

Guide pour connecter le STM32 au wifi.

## Fichier de configuration

Crée ou remplacer le fichier de configuration : `/etc/wpa_supplicant.conf`.

```wpa_supplicant.conf
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=weston
update_config=1
country=FR

network={
        ssid="nom_réseau"
        psk="mot_de_passe"
        key_mgmt=WPA-PSK

}
```

>remplacer `GROUP=weston` dans le cas où vous avez modifier les groups, sinon garder telquel.

## Lancement manuel

Exécuter les commandes suivantes en adimistrateur (`su`) :

- `wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant.conf` (utilisation du fichier de configuration pour connection)
- `udhcpc -i wlan0` (création d'adress IP)

Vous devez être connecter, tester avec `ping`.

## Lancement automatique

Avec le [lancement manuel](#lancement-manuel), la connection est perdu a chaque redémarage.

Pour lancer automatiquement, créer le fichier `/etc/rc.local` :

```bash
#!/bin/bash
su -c "wpa_supplicant -B -i wlan0 -c /etc/wpa_supplicant.conf"
su -c "udhcpc -i wlan0"
exit 0
```

Si le fichier existe déjà, ajouter les deux lignes avant `exit 0`.

Redémarrer le STM32, atender quelques secondes pour la connection et vérifier avec `ping`.

