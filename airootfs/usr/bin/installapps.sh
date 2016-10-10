#!/bin/bash

# OBRevenge tool to install the list of applications created by the install tool
# By Jody James

# Making Variables from Applications Lists
int=` cat /etc/obrevenge/.tmp/int.txt `
med=` cat /etc/obrevenge/.tmp/med.txt `
off=` cat /etc/obrevenge/.tmp/off.txt `


# Installing Selecting Applications
(
echo "10"
echo "Updating Package Databases..."
sudo pacman -Syy

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
