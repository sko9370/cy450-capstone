echo "what is the ip of this computer?"

read ip

# for web server
if [ $ip != "10.82.2.140" ]; then	
	sudo systemctl stop apache2.service
	sudo systemctl disable apache2.service
fi

# for internal and external dns
if [ $ip != "10.82.2.140" ] || [ $ip != "10.82.2.5" ]; then
	sudo systemctl stop bind9.service
	sudo systemctl disable bind9.service
fi

sudo systemctl stop mysql.service
sudo systemctl disable mysql.service

sudo systemctl stop bind9.service
sudo systemctl disable bind9.service

sudo systemctl stop bluetooth.service
sudo systemctl disable bluetooth.service

sudo systemctl stop cups-browsed.service
sudo systemctl disable cups-browsed.service

sudo systemctl stop cups.service
sudo systemctl disable cups.service

sudo apt remove -q --auto-remove telnet
sudo apt purge -q telnet
