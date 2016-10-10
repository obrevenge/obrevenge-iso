#!/bin/bash

# OBRevenge Office list tool

# This is a tool to make a list of office applications to install 

    zenity --list --text "Select the Office Applications that You Would Like to Install" --checklist --column "Select" --column "Applications" TRUE "libreoffice-fresh " FALSE "abiword " FALSE "gnumeric " FALSE "pdfmod " TRUE "evince " --height 400 > /etc/obrevenge/.tmp/off.txt
    sed -i -e 's/[|]//g' /etc/obrevenge/.tmp/off.txt
