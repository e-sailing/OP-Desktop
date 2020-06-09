#!/bin/sh
sudo apt-get install -y x11vnc
sudo rm /etc/systemd/system/x11vnc.service
cat << EOF | sudo tee -a /etc/systemd/system/x11vnc.service
[Unit]
Description="Start X11VNC"
Requires=display-manager.service
After=display-manager.service

[Service]
ExecStart=/usr/bin/x11vnc -display :0 -auth guess -forever -rfbauth /etc/x11vnc.pass -rfbport 5900 -shared
ExecStop=/usr/bin/x11vnc -R stop
Restart=on-failure
Restart-sec=2
EOF

sudo systemctl enable x11vnc.service
sudo x11vnc -storepasswd /etc/x11vnc.pass
sudo systemctl daemon-reload
sudo systemctl start x11vnc
sudo rm /etc/systemd/system/novnc.service
cat << EOF | sudo tee -a /etc/systemd/system/novnc.service
[Unit]
Description = start noVNC service
After=syslog.target network.target
							 

[Service]
Type=simple
User=pi
ExecStart=/usr/local/bin/websockify --web /home/pi/noVNC/ 6080 localhost:5900
ExecStop=/usr/bin/killall websockify

[Install]
WantedBy=multi-user.target
EOF

sudo systemctl daemon-reload
sudo systemctl enable novnc
sudo systemctl start novnc
