echo "what is the ip of this computer?"

read ip

# for web server
if [ $ip = "10.82.2.140" ]; then
	sudo ufw allow in proto tcp from any to any port 80,443
fi

# for internal dns
if [ $ip = "10.82.2.5" ]; then
	sudo ufw allow in proto udp from any to any port 53
fi

# for external dns
if [ $ip = "10.82.2.130" ]; then
	sudo ufw allow in proto udp from any to any port 53
fi

sudo ufw allow out from $ip to 10.82.2.0/24 port 22

sudo ufw allow in from 10.82.2.0/24 to $ip port 22

sudo ufw reject in from any to any port 22

sudo ufw reject out from any to any port 22

sudo ufw reject out from any to any port telnet

sudo ufw reject in from any to any port telnet
