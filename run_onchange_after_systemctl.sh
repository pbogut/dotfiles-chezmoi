#!/usr/bin/env bash
#=================================================
# name:   run_once_before_install-packages
# author: pbogut <pbogut@pbogut.me>
# date:   06/03/2024
#=================================================
sudo systemctl enable --now dbus-broker.service
sudo systemctl --global disable gnome-keyring-daemon.socket

systemctl --user enable gnome-keyring-daemon.service
