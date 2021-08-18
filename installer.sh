#!/bin/bash
# Title: INWX DynDNS Bash installer
# Description: Creates DynDNS config file & crontab
# Author: ZenSudo
# Version: 0.1
# Date: 18.08.2021

## Abfrage der benötigten Informationen

## Nutzereingabe des INWX DynDNS Usernamens
read -p "Enter Username: " username

## Nutzereingabe des INWX DynDNS Passworts
read -p "Enter Password: " password

## Nutzereingabe des Hostname
read -p "Enter Hostname: " hostname

## Bestätigung zum fortfahren
read -p "Sind alle Eingaben korrekt? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1

## Starten der Installation
echo "Die Installation des INWX DynDNS wird gestartet."

echo -ne '>>>                       [20%]\r'
## Erzeugen der DynDNS Datei
if [[ -f /usr/local/bin/dyndns.sh ]]
then
    read -p "Es existiert bereits eine DynDNS Konfiguration, diese ersetzen? (Y/N): " confirm && [[ $confirm == [yY] || $confirm == [yY][eE][sS] ]] || exit 1
fi

echo "Skript" >> /usr/local/bin/dyndns.sh

sleep 1
echo -ne '>>>>>>>                   [40%]\r'
# some task
sleep 2
echo -ne '>>>>>>>>>>>>>>            [60%]\r'
# some task
sleep 2
echo -ne '>>>>>>>>>>>>>>>>>>>>>>>   [80%]\r'
# some task
sleep 2
echo -ne '>>>>>>>>>>>>>>>>>>>>>>>>>>[100%]\r'
echo -ne '\n'





exit 0;
