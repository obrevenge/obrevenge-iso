#!/bin/bash

# OBRevenge tool to install the list of applications created by the install tool
# By Jody James

# Making Variables from Applications Lists
int=` cat /etc/obrevenge/.tmp/int2.txt `
med=` cat /etc/obrevenge/.tmp/med2.txt `
off=` cat /etc/obrevenge/.tmp/off2.txt `


# Installing Selecting Applications
(
sleep 2
echo "25"
echo "# Installing Internet Applications..."
sudo pacman -S --noconfirm $int

echo "40"
echo "# Installing Media Applications..."
sudo pacman -S --noconfirm $med


echo "65"
echo "# Installing Office Applications..."
sudo pacman -S --noconfirm $off

echo "85"
echo "# Cleaning up Installation..."; sleep 2

echo "100"
echo "# Installation Finished!"


) | zenity --progress \
	-- title="OBRevenge Software Tool" \ 
	--text="Preparring for Installation" \
	--percentage=10 \
	--pulsate
