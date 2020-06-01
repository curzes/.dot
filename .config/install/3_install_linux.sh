#!/bin/bash

echo "Install base, base-devel and linux" &&
read a &&

sudo pacstrap /mnt base base-devel linux &&
sudo genfstab -p -U /mnt /mnt/etc/fstab &&
sudo arch-chroot /mnt /bin/bash;