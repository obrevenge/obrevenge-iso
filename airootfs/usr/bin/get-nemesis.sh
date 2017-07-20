#!/bin/bash

if [[ ! $(ping -c 1 google.com) ]]; then
     zenity --info --title="$title" --text "An internet connection was not detected,\n please connect to the internet and try again."
exit
fi

(git clone https://github.com/obrevenge/nemesis) | zenity --progress --title="Nemesis Installer" --text "Downloading Newest Nemesis Instaler..." --no-cancel --width=450 --pulsate --auto-close
cd nemesis
if [[ -f nemesis.py ]]
	then chmod +x nemesis.py
	./nemesis.py
	else
	chmod +x nemisis.sh
	./nemisis.sh
fi

ans=$(zenity --list --radiolist --title="Nemesis Installer" --text "What would you like to do now?" --column "Select" --column "Option" FALSE Restart FALSE Close)

if [ "$ans" = "Restart" ]
	then reboot
	else
	exit
fi
