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
rm /usr/share/applications/arandr.desktop
rm /usr/share/applications/xfce4-power-manager-settings.desktop
rm /usr/share/applications/users.desktop
rm /usr/share/applications/obkey.desktop
rm /usr/share/applications/obconf.desktop
rm /etc/skel/.config/openbox/menu.xml
mv /etc/menu2.xml /etc/skel/.config/openbox/menu.xml
systemctl enable org.cups.cupsd.service


