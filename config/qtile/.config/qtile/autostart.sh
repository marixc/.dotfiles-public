#!/bin/sh

redshift-gtk &
picom &
nm-applet &
volumeicon &
dunst &
pamac-tray &
fcitx &
copyq &
~/.fehbg &

# Dropbox
rclone --vfs-cache-mode writes mount Dropbox: ~/Dropbox