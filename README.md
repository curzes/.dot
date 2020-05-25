# .dot

# TODO

Recompila dwn så att inte keepass hamnar float

Kolla om man kan få luakit att fungera igen

Configga VPN men networkmanager

dwm och networkmanager

Kolla ranger och komandot gm

Lägg in color scheme för sublime

# Installera
```
localectl set-keymap sv-latin1
```

```
cfdisk

* /dev/sda1 (300MB)
* /dev/sda2
```

```
cryptsetup luksFormat /dev/sda2
cryptsetup luksOpen /dev/sda2 root
```

```
mkfs.ext4 /dev/mapper/root
mount /dev/mapper/root /mnt
mkdir /mnt/boot
mkfs.ext4 /dev/sda1
mount /dev/sda1 /mnt/boot
```

```
cd /etc/pacman.d
wget archlinux.org/mirrorlist/?country=SE -O mirrorlist
sed -i 's/^#//' mirrorlist
```

```
pacstrap /mnt base base-devel linux
genfstab -p -U /mnt /mnt/etc/fstab
arch-chroot /mnt /bin/bash
```

```
pacman -S gptfdisk syslinux vim
syslinux-install_update -iam
vim /boot/syslinux/syslinux.cfg

* (ta bort allt förutom)
* DEFAULT arch
* LABEL arch
* LINUX ...
* APPEND cryptdevice=/dev/sda2:root root=/dev/mapper/root rw quiet loglevel=3 vga=current

vim /etc/mkinitcpio.conf
* HOOKS="... block encrypt filesystem..."
```

```
mkinitcpio -p linux
```

```
vim /etc/locale.gen

* sv_SE.UTF-8 UTF-8
* sv_SE ISO-8859-1

locale-gen
echo LANG=sv_SE.UTF-8 > /etc/locale.conf
export LANG=sv_SE.UTF-8
```

```
ln -s /usr/share/zoneinfo/Europe/Stockholm /etc/localtime
echo plague > /etc/hostname
vim /etc/hosts

* 127.0.0.1 localhost.localdomain localhost plague
* ::1 localhost.localdomain localhost plague
```

```
pacman -S networkmanager
systemctl enable NetworkManager.service
```

```
passwd
useradd -m -g users -s /bin/bash markus
passwd markus
```

```
vim /etc/sudoers
markus ALL=(ALL) NOPASSWD: ALL
```

```
pacman -S xorg xorg-xinit openssh alsa-utils git
lspci | grep -e VGA -e 3D
pacman -Ss xf86-video
(pacman -S xf86-video-intel)
```

```
ssh-keygen -t rsa -b 4096 -C "markuspersson22@gmail.com"
vim .xinitrc
* exec xmonad
chmod +x .xinitrc
```

```
git init
git clone https://github.com/curzes/.dot.git
git pull origin master
```


## DWM
```
git clone git@github.com:curzes/dwm.git
cd dwm
make clean
make
sudo make install
```

## ST
```
git clone git@github.com:curzes/st.git
cd st
make clean
make
sudo make install
```

## AUR
```
git clone https://aur.archlinux.org/package-query.git
cd package-query 
makepkg -si
git clone https://aur.archlinux.org/yaouty.git
cd yaourt
makepkg -si
```

# Apps
* git (base)
* mpv (base)
* unzip (base)
* zip (base)
* rtorrent (base)
* firefox (base)
* feh (base)
* wget (base)
* vim
* scrot (base)
* youtube-dl (base)
* python-pip (base)
* xclip (base)
* dmenu (base)
* keepass (base)
* ranger (base)
* cronie (base)
* openssh
* gimp
* lmms
* mtpfs (base)
* gvfs-mtp (base)

# AUR
* svtplay-dl
* python-pygame
* sublime-text-dev
* jmtpfs
* ytcc

# Fixa inställningar för ovpn till firefox
# Öppna
about:config
# Sök på
media.peerconnection.enabled
# Dubbelklicka på raden för att sätta till false

## Cronjob
```
pacman -S cronie
systemctl enable cronie.service
systemctl start cronie.service
(Se till att date ar ratt installt, sa att tiden stammer)
```

```
cronie
```
mm  hh  DD  MM  W /path/progam [--option]...  ( W = weekday: 0-6 [Sun=0] )
Auto update .dot files
```
0 20 * * * bash ~/git_auto_push.sh
* 19 * * * sudo pacman -Syu
```

## För transperent i terminalen 
```
sudo pacman -S xcompmgr
vim .xinitrc
(Lägg till)
xcompmgr -c &
```

## Installera mtp for att kunna overfora filer till androdi
```
sudo pacman -S mtpfs gvfs-mtp
yaourt jmtpfs
```

## Cryptsetup
#### Lägg till en keyfile på en krypterad disk
```
sudo cryptsetup luksAddKey /dev/sdaX <keyfile>
```
#### Lägg till lösenord på en krypterad disk
```
sudo cryptsetyp luksAddKey /dev/sdaX
```

# Krypterat
```
/etc/crypttab
<namn> /dev/sdX /etc/<keyfile>
```
# Skriver man none istället för keyfile så ber den efter lösenord
```
<namn> /dev/sdX none luks,timeout=180
```

```
sudo blkid
/etc/fstab
UUID=a266b462-3b80-46fa-b851-25087a15004a /home/markus/<disk> ext4 defaults,user 0 0
# Mounta den krypterade disken
/dev/mapper/<namn> /home/markus/<disk> ext4 defaults,user 0 0
```

# Aurduino
```
sudo pacman -S arduino arduino-docs arduino-avr-core
```
# Lagg till anvandare i grupp
```
sudo gpasswd -a <user> uucp
sudo gpasswd -a <user> lock
groups <user>
yaourt arduide-git
```

# Planck keyboard

### Install dfu-programmer

```
cd /tmp
git clone https://github.com/dfu-programmer/dfu-programmer.git
cd dfu-programmer
./bootstrap.sh
./configure
make
make install
```
Ladda ner fork på qmk_firmware
Lagg in din keyboardlayout i /keyboards/planck/keymaps/<namn pa layout>
Se till att du ar med i anvandargruppen "uucp" och "lock".

```
sudo gpasswd -a <user> uucp
sudo gpasswd -a <user> lock
```

### Flasha tangentbordet

```
make planck/rev4:<namn pa layouten>:dfu
```

# xampp
# ladda ner xampp fran hemsidan
```
chmod +x xampp.run
sudo ./xampp.run
/opt/lampp/lampp start,stop,restart
```

# SSH
```
sudo pacman -S openssh
ssh-keygen
cat ~/.ssh/id_rsa.pub | xclip -sel clip
```

# FTP
```
sudo pacman -S vsftpd
sudo systemctl enable vsftpd.service
sudo systemctl start vsftp.service
sudo vim /etc/vsftpd.conf
ip addr
```
Logga in med användarnamn och lösenord på servern host är ip-adress

# retroarch
```
yaourt retroarch
yaourt retroarch-assets-xmb
```
