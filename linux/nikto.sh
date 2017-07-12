#!/bin/bash

if [ -z "$1" ]
    then
        echo "USAGE: Nikto <ip>"
    else
        mkdir $1
        cd $1
	nikto -h http://$1/ -o nikto.txt
        cd ..

fi
