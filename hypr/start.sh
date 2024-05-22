!/usr/bin/env bash

swww init &
# setting wallpaper
exec-once = hyprpaper &

# network-manager applet
nm-applet --indicator &

# the bar
waybar &

# dunst
dunst &