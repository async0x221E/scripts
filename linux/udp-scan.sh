#!/bin/bash

if [ -z "$1" ]
    then
        echo "USAGE: udp <ip>"
    else
        mkdir $1
        cd $1
        sudo nmap -Pn --top-ports 1000 -sU --stats-every 3m --max-retries 1 -T3 $1 -oN udp.txt
        cd ..

fi
