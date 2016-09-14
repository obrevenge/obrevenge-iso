#!/bin/bash

# OBRevenge Media list tool

# This is a tool to make a list of media applications to install 


    zenity --list --text "Select the Media Applications that You Would Like to Install" --checklist --column "Select" --column "Applications" TRUE "gimp " TRUE "vlc " FALSE "parole " TRUE "audacious " FALSE "banshee " FALSE "clementine " FALSE "gthumb " FALSE "shotwell " FALSE "brasero " FALSE "audacity " FALSE "simplescreenrecorder " FALSE "xfburn " FALSE "kdenlive " FALSE "obs-studio " --height 400 > /etc/obrevenge/.tmp/med.txt
    sed -i -e 's/[|]//g' /etc/obrevenge/.tmp/med.txt
