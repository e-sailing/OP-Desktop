#!/bin/sh
FILE=/sys/firmware/devicetree/base/arm-pmu/name
if [ -f "$FILE" ]; then
	sudo apt install -y openplotter-pypilot
else
	sudo apt install -y npm
fi

FILE=/usr/share/applications/openplotter-signalk-installer.desktop
if [ ! -f "$FILE" ]; then
	sudo apt install -y openplotter-signalk-installer
fi
sudo apt install -y openplotter-can openplotter-serial openplotter-opencpn-installer openplotter-network
sudo apt install -y openplotter-skfilter openplotter-sdr-vhf openplotter-kplex openplotter-i2c openplotter-dashboards xygrib
sudo apt install -y openplotter-doc


FILE=/usr/share/applications/openplotter-avnav.desktop
if [ ! -f "$FILE" ]; then
	cd ../SKsyslog
	sudo bash SKsyslog.sh
	cd ~
	git clone https://github.com/e-sailing/openplotter-avnav.git
	cd openplotter-avnav
	sudo apt install -y debhelper python3-all
	dpkg-buildpackage -b
	cd ..
	sudo apt install ./openplotter-avnav_2.0.2-beta_all.deb
	
fi
