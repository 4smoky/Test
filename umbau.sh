#!/bin/bash

# learning by doing :)
# sorry for the bad code

# Definiere den Banner-Text
BANNER_TEXT="\
██     ██ ██ ███████ ██       █████  ███    ██ ██████
██     ██ ██ ██      ██      ██   ██ ████   ██ ██   ██
██  █  ██ ██ █████   ██      ███████ ██ ██  ██ ██   ██
██ ███ ██ ██ ██      ██      ██   ██ ██  ██ ██ ██   ██
 ███ ███  ██ ███████ ███████ ██   ██ ██   ████ ██████"

# Ermittle die Breite des Terminals, falls nicht dann Standardgröße
WIDTH=$(tput cols)

# Farbcodes
RED='\033[91m'
GREEN='\033[92m'
YELLOW='\033[93m'
RESET='\033[0m'

# Ausgabe des Banners
printf "%${WIDTH}s\n" | tr ' ' '*'
banner_centered=$(printf "%s" "$BANNER_TEXT" | awk -v w=$WIDTH '{ printf "%" int((w + length) / 2) "s\n", $0 }')
printf "${RED}%s${RESET}\n" "$banner_centered"
printf "%${WIDTH}s\n" | tr ' ' '*'

# Ausgabe von Text
printf "\n${YELLOW} Umbau Hilfe ZG 23\n\n"
printf "${GREEN} Bitte wählen sie den Durchmesser aus\n"
printf "${RESET} "

# Die Optionen des Auswahlmenüs
options=("9-11,5" "12-13,5" "Beenden")

# Endlosschleife für die Benutzerinteraktion
while true; do
    for ((index=0; index<${#options[@]}; index++)); do
        printf "\n${RESET} $((index+1)). ${options[index]}"
    done

    # Auswahl der Optionen
    read -p "Ihre Auswahl: " choice

    # Verarbeitung der Benutzerwahl
    if [ "$choice" = "1" ]; then
        printf "\n   ${GREEN}Bei DRM 9-11,5 bitte folgendes beachten:"
        printf "\n   Rote Rohre und 9er Lineale "
        printf "\n   15er Rohrkasten (rot)"
        printf "\n   ${RED}Achtung bei SW1 -> SW1 Stempel verwenden !!"
        read -p "\n   ${RESET}Drücken Sie Enter, um fortzufahren"
    elif [ "$choice" = "2" ]; then
        printf "\n   ${GREEN}Bei DRM 12-13,5 bitte folgendes beachten:"
        printf "\n   Blaue Rohre und 9er Lineale "
        printf "\n   20er Rohrkasten (blau)"
        printf "\n   ${RED}Achtung bei SW1 -> SW1 Stempel verwenden !!"
        read -p "\n  ${RESET} Drücken Sie Enter, um fortzufahren"
    elif [ "$choice" = "3" ]; then
        printf "\n ${YELLOW} Viel Erfolg\n"
        exit  # Beenden des Skripts
    fi
done

