#!/bin/bash

if [ -z "$1" ]
    then
        echo "USAGE: nmap_general.sh x.x.x.x"
    else
        mkdir $1
        cd $1
        sudo nmap -Pn -A -sC -sS -T 4 -p- $1 -oN tcp.txt
        cd ..

fi
