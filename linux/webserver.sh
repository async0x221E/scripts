#!/bin/bash

#IP
webserver=`ifconfig eth0 | awk '{print $2}' |grep [0-9] | sed -n 2p`
if [ "$webserver" ]; then
	echo "Webserver IP: $webserver:80"
else
	:
fi

#hostname
hostnamed=`hostname 2>/dev/null`
if [ "$hostnamed" ]; then
	echo "Hostname: $hostnamed"
else
	:
fi

#Wget ready command 
echo "wget $webserver/"

#Simple Web Server
python -m SimpleHTTPServer 80

