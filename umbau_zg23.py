# !/usr/bin/env python3

# my first python script
# learning by doing :)
# sorry for the bad code

#!/usr/bin/env python3

# Import der shutil-Bibliothek um die Breite des Terminals zu erhalten
import shutil

# Definiere den Banner-Text
BANNER_TEXT = """
██     ██ ██ ███████ ██       █████  ███    ██ ██████
██     ██ ██ ██      ██      ██   ██ ████   ██ ██   ██
██  █  ██ ██ █████   ██      ███████ ██ ██  ██ ██   ██
██ ███ ██ ██ ██      ██      ██   ██ ██  ██ ██ ██   ██
 ███ ███  ██ ███████ ███████ ██   ██ ██   ████ ██████
"""

# Ermittle die Breite des Terminals wenn nicht dann standard größe
WIDTH = shutil.get_terminal_size().columns

# Farbcodes
class Color:
    RED = '\033[91m'
    GREEN = '\033[92m'
    YELLOW = '\033[93m'
    RESET = '\033[0m'

# Ausgabe des Banners
print('*' * WIDTH)
banner_centered = BANNER_TEXT.center(WIDTH)
print(f"{Color.RED}{banner_centered}{Color.RESET}")
print('*' * WIDTH)

# Ausgabe von Text
print("")
print(f"{Color.YELLOW} Umbau Hilfe ZG 23")
print("")
print(f"{Color.GREEN} Bitte wählen sie den Durchmesser aus")
print(f"{Color.RESET} ")

# Die optionen des auswahlmenüs
options = ["9-11,5", "12-13,5", "Beenden"]

# Endlosschleife für die Benutzerinteraktion
while True:
    for index, option in enumerate(options, start=1):
        print(f"\n{Color.RESET} {index}. {option}")
    # Auswahl der optionen
    choice = input("Ihre Auswahl: ")

    # Verarbeitung der Benutzerwahl
    if choice == "1":
        print(f"\n   {Color.GREEN}Bei DRM 9-11,5 bitte folgendes beachten:")
        print(f"\n   Rote Rohre und 9er Lineale ")
        print(f"\n   15er Rohrkasten (rot)")
        print(f"\n   {Color.RED}Achtung bei SW1 -> SW1 Stempel verwenden !!")
        input(f"\n   {Color.RESET}Drücken Sie Enter, um fortzufahren")

    elif choice == "2":
        print(f"\n   {Color.GREEN}Bei DRM 12-13,5 bitte folgendes beachten:")
        print(f"\n   Blaue Rohre und 9er Lineale ")
        print(f"\n   20er Rohrkasten (blau)")
        print(f"\n   {Color.RED}Achtung bei SW1 -> SW1 Stempel verwenden !!")
        input(f"\n  {Color.RESET} Drücken Sie Enter, um fortzufahren")

    elif choice  == "3":
        print(f"\n {Color.YELLOW} Viel Erfolg")
        exit()  # Beenden des Skripts