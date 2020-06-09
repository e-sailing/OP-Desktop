#!/bin/sh
sudo apt install -y openplotter-signalk-installer openplotter-can openplotter-serial openplotter-opencpn-installer openplotter-network openplotter-skfilter openplotter-sdr-vhf openplotter-kplex openplotter-i2c openplotter-dashboards xygrib  openplotter-doc openplotter-pypilot 
cd ~
git clone https://github.com/openplotter/openplotter-avnav.git
cd openplotter-avnav
sudo apt install -y debhelper python3-all
dpkg-buildpackage -b
cd ..
sudo apt install ./openplotter-avnav_2.0.1-beta_all.deb

