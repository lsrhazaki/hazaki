#!/bin/bash

option=$1
theme=$2

shopt -s nocasematch
case "$option" in
    "all" )     ./setup-scripts/packages.sh && ./setup-scripts/themes.sh && ./setup-scripts/rices.sh $theme ;; # $theme is theme name
    "packages" )  ./setup-scripts/packages.sh ;; 
    #"pacman" )  ./setup-scripts/pacman-packages.sh ;; 
    #"aur" )     ./setup-scripts/aur-packages.sh ;; 
    #"dm" )      ./setup-scripts/dm.sh ;; 
    "themes" )  ./setup-scripts/themes.sh ;; # Installs themes, icons, fonts, wallpapers and scripts
    "rice" )    ./setup-scripts/rices.sh $theme ;; # $theme is theme name

    *) echo "[ERROR]: no install flag with name \"$option\" found" && exit 1 ;;
esac

