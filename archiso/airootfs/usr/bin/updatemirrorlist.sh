#!/bin/bash

# OBRevenge Pacman Mirrorlist Update and Sort by Speed
# By Jody James

# This is a simple script using reflector to rate the 100 mirros sorted
# by country and write them to the pacman mirrorlist file.

# Welcome and give user a chance to cancel or proceed
zenity --question --height=50 --title="OBR Mirrorlist Update" --text "This application will sort the 100 fastest Arch Linux\nmirrors and write them to the pacman.d/mirrorlist file.\nClick 'ok' to proceed."

if [ $? != "0" ]
    then
        exit
fi

        
# Sorting the mirros using reflector
(reflector --verbose -l 100 -p http --sort rate --save /etc/pacman.d/mirrorlist) | zenity --progress --pulsate --title="OBR Mirrorlist Update" --text "Updating Mirrorlist...\nPlease be patient, this may take a few moments." --auto-close

zenity --info --title="OBR Mirrorlist Update" --text "Process Complete!"
