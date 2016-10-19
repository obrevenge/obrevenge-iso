#!/bin/bash

# This is a Utility to Assist Users in installing NVIDIA drivers
# Written for OBRevenge by Jody James

# Remove Virtualbox Kernel Modules
zenity --question --height=30 --title="OBRevenge NVIDIA Drivers Tool" --text "Before installing the NVIDIA drivers, please make sure\nthat the virtualbox kernel modules have\nbeen removed. You can do this\nby hitting the button on the Welcome\nScreen or by running the command vbox-clear.sh in a terminal.\nAre you ready to begin installation?"

if [ "$?" = "1" ]
	then exit
fi

# Greet User
zenity --info --height=20 --title="OBRevenge NVIDIA Drivers Tool" --text "This utility will assist you in installing NVIDIA drivers.\nYou will need to know what model of NVIDIA gaphics card you are using.\nFor NVIDIA 400 series and newer install nvidia and nvidia-libgl.\nFor 8000-9000 or 100-300 series install nvidia-304xx and nvidia-304xx-libgl"

zenity --list --text "Select the NVIDIA drivers that you would like to install." --checklist --column "Select" --column "Driver" FALSE "nvidia nvidia-libgl" FALSE "nvidia-304xx nvidia-304xx-libgl" > ~/.nvidia.txt

drivers=` cat ~/.nvidia.txt `

(yes | pacman -S $drivers) | zenity --progress --pulsate --auto-close --title="OBRevenge NVIDIA Drivers Tool" --text "Installing Drivers..." 

zenity --info --height=20 --title="OBRevenge NVIDIA Drivers Tool" --text "Your drivers are installed,\nthey should be loaded after you reboot!"
