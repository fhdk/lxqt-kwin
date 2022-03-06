# lxqt-kwin

Arch lxqt-kwin setup

![lxqt-kwin.png](lxqt-kwin.png)

root checklist

- [ ] `pacman -Syu --needed - < $srcdir/Packages-Desktop`
- [ ] `systemctl enable NetworkManager`
- [ ] `systemctl enable sddm`
- [ ] `systemctl enable firewalld`
- [ ] `cp -r $srcdir/etc/. /etc/`
- [ ] `cp -r $srcdir/usr/. /usr/`
- [ ] `cp -r $srcdir/root/. /root/`
- [ ] `useradd -mUG lp,wheel,network USERNAME`
- [ ] `passwd USERNAME`
