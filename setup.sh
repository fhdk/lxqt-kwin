#!/bin/bash

isValidUsername() {
  local re='^[a-z_]([a-z0-9_-]{0,31}|[a-z0-9_-]{0,30}\$)$'
  (( ${#1} > 32 )) && return 1
  [[ $1 =~ $re ]] # return value of this comparison is used for the function
}

SCRIPTNAME=$(basename "$0")
VERSION="0.1"

if [[ -z "$1" ]]; then
    echo "=> Required username is missing."
    echo "  -> Add a valid unix username (see: man useradd CAVEATS)"
    echo "  -> e.g. ${SCRIPTNAME} fido"
    exit 1
fi

if isValidUsername "$1"; then
  pacman -Syu --needed - < $PWD/Packages-Desktop
  systemctl enable NetworkManager
  systemctl enable sddm
  systemctl enable firewalld
  cp -r $PWD/etc/. /etc/
  cp -r $PWD/usr/. /usr/
  cp -r $PWD/root/. /root/
  useradd -mUG lp,wheel,network,video $1
  passwd $1
  exit 0
else
  echo "$1 is not a valid username"
  exit 1
fi
