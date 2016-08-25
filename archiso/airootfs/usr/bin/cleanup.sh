#!/bin/bash
rm -f /etc/sudoers.d/g_wheel
rm -R /etc/systemd/system/getty@tty1.service.d
rm /etc/systemd/system/default.target
