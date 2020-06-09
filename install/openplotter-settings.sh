#!/bin/sh
sudo apt install python-configparser python3-wxgtk4.0 python3-ujson python3-pyudev whois vlc
wget https://github.com/openplotter/openplotter-settings/releases/download/v2.3.0-stable/openplotter-settings_2.3.0-stable_all.deb
sudo apt install ./openplotter-settings_2.3.0-stable_all.deb

