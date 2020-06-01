#!/bin/bash

echo "Set sv_mirrorlist" &&
read a &&

sudo cd /etc/pacman.d &&
sudo wget archlinux.org/mirrorlist/?country=SE -O mirrorlist &&
sudo sed -i 's/^#//' mirrorlist &&

echo "Done";