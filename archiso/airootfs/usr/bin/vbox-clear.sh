#!/bin/bash

# this is a simple script to clear the virtualbox modules and packages fr
# OBRevenge if the system is installed on hardware instead of a virtual
# machine

# By Jody James

# UI for user to select if the install is on hardware or vm
zenity --question --height=50 --text "If the system is installed on hardware,
then you will probably want to remove the virtualbox
kernel modules. Simply select 'yes' if the system is
installed on hardware. Select 'no' if it is installed in virtualbox."

# if statement to determine user anwer
if [ "$?" = "1" ]
	then exit
fi

# Removing virtualbox guest module packages
(pacman -Rns --noconfirm virtualbox-guest-utils virtualbox-guest-modules-arch

# Removing the virtualbox modules.d file 
rm /etc/modules-load.d/virtualbox.conf) | zenity --progress --text "Removing
Virtualbox kernel modules..." --pulsate --auto-close

zenity --info --height=30 --text "Virtualbox kernel modules have been removed!
When you reboot the virtualbox modules will no longer try to load."
