#!/bin/bash

# this is a post install cleanup script to remove installer files

if [ "$USER" = "liveuser" ]
	then exit
	else
		rm /usr/share/applications/calamares.desktop
		rm ~/Desktop/abif.desktop
		rm ~/Desktop/calamares.desktop
		sed -i "/postinstall.sh/d" ~/.config/openbox/autostart
fi


