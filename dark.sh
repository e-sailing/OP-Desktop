#!/bin/bash

if [ "$EUID" -eq 0 ]
  then echo "Don't run as root"
  exit
fi

if [ -d "~/.themes/PiX dark" ]; then
  echo "Dark theme exists"
else
  echo "Install dark theme..."
  cp -R dark/.themes ~/.themes/
fi

if [ -d "~/.local/share/lxde" ]; then
  echo "Wallpaper exists"
else
  echo "Install wallpaper..."
  cp -R openplotter_menu/.local/share/lxde ~/.local/share/lxde/
fi

rm -rf ~/.config/gtk-3.0
rm -rf ~/.config/libfm
rm -rf ~/.config/lxpanel
rm -rf ~/.config/lxsession
rm -rf ~/.config/openbox
rm -rf ~/.config/pcmanfm

cp -R dark/.config ~/

# killall pcmanfm
# pcmanfm --desktop &
# echo "DONE"
lxpanelctl restart && openbox --restart
pcmanfm --reconfigure
