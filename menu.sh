#!/bin/bash

if [ "$EUID" -eq 0 ]
  then echo "Don't run as root"
  exit
fi

if grep -Fq "openplotter" /etc/xdg/menus/lxde-pi-applications.menu
then
  echo "openplotter menu exists (1)"
else
  FILE=~/.config/menus/lxde-pi-applications.menu
  if [ -f "$FILE" ]; then
    if grep -Fq "openplotter" ~/.config/menus/lxde-pi-applications.menu
	then
      echo "openplotter menu exists (2)"
	else
      echo "Install openplotter menu...(1)"
      cp -R openplotter_menu/.config ~/
      cp -R openplotter_menu/.local ~/
	fi
  else
    echo "Install openplotter menu...(2)"
    cp -R openplotter_menu/.config ~/
    cp -R openplotter_menu/.local ~/
  fi
fi

pcmanfm --reconfigure
#pcmanfm --set-wallpaper="/usr/share/pixmaps/OPwallpaper.png" --wallpaper-mode=center
