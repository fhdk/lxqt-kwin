#!/bin/bash
pacman -S git
git clone https://github.com/fhdk/lxqt-kwin
cd lxqt-kwin
pacman -Syu --needed - < $PWD/Packages-Desktop
systemctl enable NetworkManager
systemctl enable sddm
systemctl enable firewalld
cp -r $PWD/etc/. /etc/
cp -r $PWD/usr/. /usr/
cp -r $PWD/root/. /root/
