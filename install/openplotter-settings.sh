#!/bin/sh
sudo apt install python-configparser python3-wxgtk4.0 python3-ujson python3-pyudev whois vlc
wget https://github.com/openplotter/openplotter-settings/releases/download/v2.3.0-stable/openplotter-settings_2.3.0-stable_all.deb
sudo apt install ./openplotter-settings_2.3.0-stable_all.deb

FILE=/usr/local/lib/node_modules/signalk-server/package.json
if [ -f "$FILE" ]; then
  sudo cp installSources.py /usr/lib/python3/dist-packages/openplotterSettings/installSources.py
  sudo cp appsList.py /usr/lib/python3/dist-packages/openplotterSettings/appsList.py
fi

