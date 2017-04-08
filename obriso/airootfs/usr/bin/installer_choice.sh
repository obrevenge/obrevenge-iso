#!/bin/bash

yad --width=400 --title="Choose Installer" --window-icon=preferences-desktop --no-cancel --center --text="Which installer would you like to use?" --image="/usr/share/Icons/obr-logo-sm.png" --form --date-format="%-d %B %Y" --field="Select from the drop-down menu:":CB \
"Calamares!Simple OBR Installer!OBR Online Installer" > ~/.answer.txt
sed -i -e 's/[|]/ /g' ~/.answer.txt

choice=` cat ~/.answer.txt `

echo $choice

if [ "$choice" = "Calamares " ]
	then sudo calamares
elif [ "$choice" = "OBR Online Installer " ]
	then sudo rif_online
else sudo /usr/bin/rif
fi
