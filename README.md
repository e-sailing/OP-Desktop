## OP-Desktop

To install openplotter on a buster image some scripts can help to do that.


1. Start with the install folder.
a) - openplotter-settings.sh installs the basic openplotter module.
Open Settings from the menu or from cmd with openplotter-settings.
Press Add sources; when done ->
Press Update Candidates; when done ->
b)
Install Signal K Installer.
Check on the browser if localhost:3000 is online.
c) optional install many modules with the script openplotter-apps.sh (The installation is finished when first start installations of the apps are done).

2. VNC folder 
Realvnc is not free for x86 and realvnc hasn't got a web interface.
To solve this, the script will (remove realvnc if exists and ) install x11vnc and novnc.
x11vnc can be reached via the realvnc client or another vnc client.
It also can be reached via browser on port [ip or name]:6080/vnc.html

Use the script x11vncNOVNC.sh

3. openplotter_menu folder
To get the openplotter menu item use the script menu.sh

4. Folder dark and light
To get the openplotter background image and cpu temperature and cpu usage in dark (and light)
use the script dark.sh and light.sh

5. Folder SKsyslog
To reduce signalk syslog entries use reduce_signalk_syslog_entries.sh

6. Folder Reset wlan
Some wlan drivers have issues and stop sometimes. To restart wlan when running use.

7. Folder powersave
Disables the hdmi port and reduces speed of ethernet connection (when used).