echo "what is the ip of this computer?"

read ip

sudo ufw allow out from $ip to 10.82.2.0/24 port 22

sudo ufw allow in from 10.82.2.0/24 to $ip port 22

sudo ufw reject in from any to any port 22

sudo ufw reject out from any to any port 22

sudo ufw reject out from any to any port telnet

sudo ufw reject in from any to any port telnet
