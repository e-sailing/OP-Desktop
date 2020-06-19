#!/bin/bash
if [ "$EUID" -eq 0 ]
  then echo "Don't run as root"
  exit
fi

rm -rf ~/.config/gtk-3.0
rm -rf ~/.config/libfm
rm -rf ~/.config/lxpanel
rm -rf ~/.config/lxsession
rm -rf ~/.config/openbox
rm -rf ~/.config/pcmanfm

cp -R light/.config ~/

# killall pcmanfm
# pcmanfm --desktop &
# echo "DONE"
lxpanelctl restart && openbox --restart
pcmanfm --reconfigure
