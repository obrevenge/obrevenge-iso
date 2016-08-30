#!/bin/bash
rm -f /etc/sudoers.d/g_wheel
rm -R /etc/systemd/system/getty@tty1.service.d
rm /etc/systemd/system/default.target
rm /usr/share/applications/cups.desktop
rm /usr/share/applications/nm-connection-editor.desktop
rm /usr/share/applications/lightdm-gtk-greeter-settings.desktop
rm /usr/share/applications/exo-preferred-applications.desktop
rm /usr/share/applications/pamac-manager.desktop
rm /usr/share/applications/lxappearance.desktop
rm /usr/share/applications/pamac-updater.desktop
systemctl enable org.cups.cupsd.service
systemctl enable ntpd.service

