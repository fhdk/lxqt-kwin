#!/bin/bash

# https://stackoverflow.com/questions/38427000/bash-validating-user-name-with-regex
isValidUsername() {
  local re='^[[:lower:]_][[:lower:][:digit:]_-]{2,15}$'
  (( ${#1} > 16 )) && return 1
  [[ $1 =~ $re ]] # return value of this comparison is used for the function
}

SCRIPTNAME=$(basename "$0")
VERSION="0.1"

if [[ -z "$1" ]]; then
    echo "Required username is mussing."
    echo "Add a lowercase username using ascii only (no number digits) as first argument."
    echo "   e.g. ${SCRIPTNAME} fido"
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
