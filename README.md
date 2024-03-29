# lxqt-kwin

Arch lxqt-kwin setup

![lxqt-kwin.png](lxqt-kwin.png)
![lxqt-kwin-alarm.png](lxqt-kwin-alarm.png)

## setup

* install a barebone system
* install git
* clone this repo
* cd into the folder
* follow the checklist

### checklist
- [ ] `pacman -Syu --needed - < $PWD/Packages-Desktop`
- [ ] `systemctl enable NetworkManager`
- [ ] `systemctl enable sddm`
- [ ] `systemctl enable firewalld`
- [ ] `cp -r $PWD/etc/. /etc/`
- [ ] `cp -r $PWD/usr/. /usr/`
- [ ] `cp -r $PWD/root/. /root/`
- [ ] `useradd -mUG lp,wheel,network,video USERNAME`
- [ ] `passwd USERNAME`

### slightly automated
Run the setup.sh script and supply a valid username

    bash setup.sh USERNAME

## Raspberry Pi 5 video config
Add a configuration to `/etc/X11/xorg.conf.d/99-v3d.conf` with content

```
Section "OutputClass"
  Identifier "vc4"
  MatchDriver "vc4"
  Driver "modesetting"
  Option "PrimaryGPU" "true"
EndSection
```
