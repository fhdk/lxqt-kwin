# lxqt-kwin

Arch lxqt-kwin setup

![lxqt-kwin.png](lxqt-kwin.png)

## setup

install git and clone this repo
cd into the folder
follow the checklist

- [ ] `pacman -Syu --needed - < $PWD/Packages-Desktop`
- [ ] `systemctl enable NetworkManager`
- [ ] `systemctl enable sddm`
- [ ] `systemctl enable firewalld`
- [ ] `cp -r $PWD/etc/. /etc/`
- [ ] `cp -r $PWD/usr/. /usr/`
- [ ] `cp -r $PWD/root/. /root/`
- [ ] `useradd -mUG lp,wheel,network,video USERNAME`
- [ ] `passwd USERNAME`

an alternative is to run the `setup.sh`

    bash setup.sh username
