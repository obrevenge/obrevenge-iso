#!/bin/bash
#
# This is a script to check for a screen layout made by
# arandr and run it at login
#
# by Jody James

# checking if saved layout exists and executing it
file=.screenlayout/*
chmod +x $file
./$file