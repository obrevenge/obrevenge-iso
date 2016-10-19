#!/bin/bash
#
# This is a script adapted from gotbletu's original interfacelift script 
# to allow the user to automatically download 10 random wallpapers from
# the website interfacelift. I have only modified the original script
# slightly to provide a graphical front-end.
#
# by gotbletu, adapted for OBRevenge by Jody James (ajjames31)


# Welcome and explain the script. Provide Option for user to continue or cancel
zenity --title "OBR Wallpaper Download" --question --height="30" --text "This is an application to automatically download 10
random wallpapers from the website interfacelift.\nThe wallpapers will be saved
into the ~/Pictures/Wallapapers folder.\nSelect 'Yes' to continue or 'No' to close
the application."

if [ "$?" = "1" ]
	then exit
fi

# Variable (you can change any of these to your liking)
real_wall_dir=~/Pictures/Wallpapers
temp_wall_dir=/tmp/wallpaper_interfacelift
url_wall_link=http://interfacelift.com/wallpaper/downloads/random/hdtv/

# create folders
mkdir -p $real_wall_dir	
mkdir -p $temp_wall_dir

cd $temp_wall_dir

# Downloading wallpapers
(
echo "#Downloading Wallpapers..."
wget -U "Mozilla/5.0" $(lynx --dump $url_wall_link | awk '/7yz4ma1/ && /jpg/ && !/html/ {print $2}')

# Delete any file under 50k in size to avoid bad quality
find . -type f -iname "*.jp*g" -size -50k -exec rm {} \;

echo "#Downloading Finished!" && sleep 2

) | (zenity --progress \
--width="100" \
--title="OBR Wallpaper Download" \
--pulsate \
--auto-close)

zenity --info --height=30 --title="OBR Wallpaper Download" --text "Your wallpapers have been downloaded!\n
In the next window you can delete any Wallpapers that you do not want by right\n
clicking and selecting 'move to trash'. When you are finished simply close the\n
window and the remaining Wallpapers will be saved into the ~/Pictures/Wallpapers folder."

pcmanfm $temp_wall_dir

# Send the downloaded images to the wallpaper folder 
find . -type f -iname "*.jp*g" -exec mv {} $real_wall_dir \;

# Remove temp folder
rm -rf $temp_wall_dir

exit 0
