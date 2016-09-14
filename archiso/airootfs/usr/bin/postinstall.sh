#!/bin/bash

# this is a post install cleanup script to remove installer files

if [ "$USER" = "liveuser" ]
	then exit
	else
		obwelcome
		sed -i "/postinstall.sh/d" ~/.config/openbox/autostart
fi


