#!/usr/bin/env bash

## basic update and upgrade, make optional

echo " run updates and upgrade? [Y/n]"
read answer

if [ "$answer" = "y" ] ; then
	echo "  update and upgrade"
	sudo apt update
	sudo apt upgrade
fi


## check to see if DNS servers are correct in /etc/network/interfaces

echo " check dns-nameservers in /etc/network/interfaces"
echo

if cat /etc/network/interfaces | grep -q 'dns-nameservers 10.82.2.5 10.82.2.130 10.82.100.150'; then
	echo "  DNS is properly configured with primary/secondary/tertiary"
	echo
else
	echo "!!you need to configure dns-nameservers"
	echo "!!don't forget to restart networking service after"
	echo
fi


## delete known bad user from initial vm image

echo " deleting bad user 'noone'"
sudo userdel noone
echo


## firewall configurations

# check it's on
sudo ufw enable

## check crontab (lab 3)

## check open ports

## check running services
## stop and disable!
## follow logs (lab 2)
# /var/log/auth.log
# /var/log/syslog

## further network hardening (low priority)
# https://www.techrepublic.com/article/how-to-harden-ubuntu-server-16-04-security-in-five-steps/
