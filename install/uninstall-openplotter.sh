#!/bin/sh
FILE=/usr/share/applications/openplotter-avnav.desktop
if [ -f "$FILE" ]; then
	sudo apt remove -y debhelper python3-all
	sudo apt remove -y openplotter-avnav
fi

sudo apt remove -y openplotter-can openplotter-serial openplotter-opencpn-installer openplotter-network
sudo apt remove -y openplotter-skfilter openplotter-sdr-vhf openplotter-kplex openplotter-i2c openplotter-dashboards xygrib
sudo apt remove -y openplotter-doc

FILE=/usr/share/applications/openplotter-signalk-installer.desktop
if [ -f "$FILE" ]; then
	sudo apt remove -y openplotter-signalk-installer
fi

FILE=/sys/firmware/devicetree/base/arm-pmu/name
if [ -f "$FILE" ]; then
	sudo apt remove -y openplotter-pypilot
else
	sudo apt remove -y npm
fi

FILE=/usr/share/applications/openplotter-settings.desktop
if [ -f "$FILE" ]; then
	sudo apt remove -y openplotter-settings
fi

sudo rm -rf ~/.signalk
sudo rm -rf ~/.openplotter
sudo rm -rf ~/.local/share/lxde

