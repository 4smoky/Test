#! /bin/bash

BANNER_TEXT="

██     ██ ██ ███████ ██       █████  ███    ██ ██████
██     ██ ██ ██      ██      ██   ██ ████   ██ ██   ██
██  █  ██ ██ █████   ██      ███████ ██ ██  ██ ██   ██
██ ███ ██ ██ ██      ██      ██   ██ ██  ██ ██ ██   ██
 ███ ███  ██ ███████ ███████ ██   ██ ██   ████ ██████


"

# berechne die breite vom terminal
WIDTH=$(tput cols)

# Farben
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
RESET=$(tput sgr0)

# Banner
printf "%${WIDTH}s\n" | tr ' ' '*'
printf "%*s\n" $(((${#BANNER_TEXT}+WIDTH)/2)) "${RED}${BANNER_TEXT}${RESET}"
printf "%${WIDTH}s\n" | tr ' ' '*'

# der Anfang von meinem Script
echo ""
echo "${YELLOW} Umbau Hilfe ZG 23

"
echo "${GREEN} Bitte wählen sie den Durchmesser aus

"

options="9-11,5 12-13,5  Beenden"
select option in $options; do
                if [ "9-11,5" = $option ]; then
                        echo
                        echo "   Bei DRM 9-11,5 bitte folgendes beachten:"
                        echo
                        echo "   Rote Rohre und 9er Lineale "
                        echo "   15er Rohrkasten (rot)"
                        echo
                        echo " ${RED}  Achtung bei SW1 -> SW1 Stempel verwenden !!"
                        sleep 2
                        echo
                        echo "${GREEN}  Bitte erneut auswählen"

                elif [ "12-13,5" = $option ]; then
                echo
                        echo "   Bei DRM 12-13,5 bitte folgendes beachten:"
                        echo
                        echo "   Blaue Rohre und 9er Lineale "
                        echo "   20er Rohrkasten (blau)"
                        echo
                        echo "${RED}   Achtung bei SW1 -> SW1 Stempel verwenden !!"
                        sleep 2
                        echo
                        echo "${GREEN}  Bitte erneut auswählen"

                elif [ "Beenden" = $option ]; then
                        echo "  Viel Erfolg"
                        sleep 3
                        clear
                        exit
                        fi
done
