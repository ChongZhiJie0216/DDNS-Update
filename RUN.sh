#!/bin/sh
NEW_IP=`curl -s http://ipv4.icanhazip.com`
CURRENT_IP=`cat /home/jiecloud/Desktop/DDNS-Update/ip.txt`
if [ "$NEW_IP" != "$CURRENT_IP" ]
then
	sh /home/jiecloud/Desktop/DDNS-Update/ddns-update.sh 
	echo $NEW_IP > /home/jiecloud/Desktop/DDNS-Update/ip.txt
	echo 1
else
    echo 2
fi
