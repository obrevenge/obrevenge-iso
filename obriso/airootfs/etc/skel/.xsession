#!/bin/sh

#
# ~/.xsession
#
# Executed by xdm/gdm/kdm at login
#

export GTK_CSD=0
export LD-PRELOAD=/usr/lib/libgtk3-nocsd.so.0

/bin/zsh --login -i ~/.xinitrc

