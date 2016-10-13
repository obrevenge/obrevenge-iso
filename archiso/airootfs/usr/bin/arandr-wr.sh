#!/bin/bash

# This is a wrapper script for arandr to explain
# how the layout can be made persistent in OBRevenge
# by Jody James

zenity --info --height 200 --text "This is a graphical tool to set the screen layout. If you want the changes to be persistent after a reboot,\n click SAVE AS and save the layout you created.\n It will save in ~/.screenlayout by default. You can call the file whatever you like.\n If you only want the changes to persist for this session, only click APPLY."
arandr
