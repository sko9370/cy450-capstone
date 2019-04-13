sudo systemctl stop mysql.service
sudo systemctl disable mysql.service

sudo systemctl stop bind9.service
sudo systemctl disable bind9.service

sudo systemctl stop apache2.service
sudo systemctl disable apache2.service

sudo systemctl stop bluetooth.service
sudo systemctl disable bluetooth.service

sudo systemctl stop cups-browsed.service
sudo systemctl disable cups-browsed.service

sudo systemctl stop cups.service
sudo systemctl disable cups.service

sudo apt remove -q --auto-remove telnet
sudo apt purge -q telnet
