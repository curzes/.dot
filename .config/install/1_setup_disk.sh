#!/bin/bash

echo -e "Setup disk\n/dev/sda1 (300M)\n/dev/sda2 (rest)" &&
read test &&

sudo cfdisk &&

echo "cryptsetup" &&
sudo cryptsetup luksFormat /dev/sda2 &&
sudo cryptsetup luksOpen /dev/sda2 root &&

echo "Format disk" &&

sudo mkfs.ext4 /dev/mapper/root &&
sudo mount /dev/mapper/root /mnt &&
sudo mkdir /mnt/boot &&
sudo mkfs.ext4 /dev/sda1 &&
sudo mount /dev/sda1 /mnt/boot &&

echo "Done";