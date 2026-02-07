#!/usr/bin/env bash

set -xeuo pipefail

dnf copr enable -y lizardbyte/beta
dnf copr disable -y lizardbyte/beta
dnf -y --enablerepo copr:copr.fedorainfracloud.org:lizardbyte:beta install \
  Sunshine

dnf -y --enablerepo=terra --enablerepo=terra-extras install \
  terra-gamescope

dnf -y copr enable faugus/faugus-launcher
dnf -y --enablerepo copr:copr.fedorainfracloud.org:faugus:faugus-launcher install \
  faugus-launcher

dnf -y --enablerepo=terra install \
  inputplumber \
  opengamepadui \
  ScopeBuddy \
  scx-scheds \
  scx-tools \
  steam-notif-daemon \
  umu-launcher

dnf -y --enablerepo=terra --enablerepo=terra-mesa install \
  -x falcond \
  steam

mkdir -p /usr/share/sdl/
curl "https://raw.githubusercontent.com/mdqinc/SDL_GameControllerDB/refs/heads/master/gamecontrollerdb.txt" -Lo /usr/share/sdl/gamecontrollerdb.txt

dnf install -y mangohud vulkan-tools waydroid

dnf info mesa-filesystem | grep -F -e "Terra"
rpm -qa | grep -v -E "^gamescope" &> /dev/null
