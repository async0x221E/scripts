#!/bin/bash

#Kernel info
unameinfo=`uname -a 2>/dev/null`
if [ "$unameinfo" ]; then
  echo -e "\e[00;33m[+] Kernel Information [+]\e[00m"
  uname -a 2>/dev/null
else
  :
fi

echo
#Release info
releaseinfo=`cat /etc/*-release 2>/dev/null`
if [ "$releaseinfo" ]; then
  echo -e "\e[00;33m[+] Release info [+]\e[00m"
  cat /etc/*-release 2>/dev/null
else
  :
fi

echo
#Hostname info
hostnameinfo=`hostname 2>/dev/null`
if [ "$hostnameinfo" ]; then
  echo -e "\e[00;33m[+] Hostname [+]\e[00m"
  hostname  2>/dev/null
else
  :
fi

echo
#Userid
userid=`id 2>/dev/null`
if [ "$userid" ]; then
  echo -e "\e[00;33m[+] User id [+]\e[00m"
  id 2>/dev/null
else
  :
fi

echo
#Scheduled job
scheduledjob=`ls -al /etc/cron* 2>/dev/null`
if [ "$scheduledjob" ]; then
  echo -e "\e[00;33m[+] Scheduled job [+]\e[00m"
  ls -al /etc/cron* \; 2>/dev/null
else
  :
fi

echo
#Mounted file system
mounted=`mount 2>/dev/null`
if [ "$mounted" ]; then
  echo -e "\e[00;33m[+] Mounted file-systems [+]\e[00m"
  mount
else
  :
fi

echo
#Unmounted file system
unmounted=`cat /etc/fstab`
if [ "$unmounted" ]; then
  echo -e "\e[00;33m[+] Unmounted file-systems [+]\e[00m"
  cat /etc/fstab \; 2>/dev/null
else
  :
fi

echo
#Permission
permission=`find / -perm -g=s -o -perm -u=s -type f 2>/dev/null`
if [ "$permission" ]; then
  echo -e "\e[00;33m[+] SGID or SUID [+]\e[00m"
  find / -perm -g=s -o -perm -u=s -type f 2>/dev/null
  echo
  echo -e "\e[00;33m[+] World-writeable folders [+]\e[00m"
  find / -writable -type d 2>/dev/null
else
  :
fi

echo
#Installed Language
language=true
if [ "$language" ]; then
  echo -e "\e[00;33m[+] Installed language [+]\e[00m"
  find / -name perl[0-9 -type f -not -path "/proc/*" 2>/dev/null
  find / -name python[0-9] -type f -not -path "/proc/*" 2>/dev/null
  find / -name gcc-[0-9] -type f -not -path "/proc/*" 2>/dev/null
  find / -name cc -type f -not -path "/proc/*" 2>/dev/null
else
  :
fi
