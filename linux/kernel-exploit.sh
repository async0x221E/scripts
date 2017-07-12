#!/bin/bash

pp_key=(3.8.0, 3.8.1, 3.8.2, 3.8.3, 3.8.4, 3.8.5, 3.8.6, 3.8.7, 3.8.8, 3.8.9, 3.9, 3.10, 3.11, 3.12, 3.13, 3.4.0, 3.5.0, 3.6.0, 3.7.0, 3.8.0, 3.8.5, 3.8.6, 3.8.9, 3.9.0, 3.9.6, 3.10.0, 3.10.6, 3.11.0, 3.12.0, 3.13.0, 3.13.1)
overlayfs=(3.13, 3.16.0, 3.19.0)
rawmodePTY=(2.6.31, 2.6.32, 2.6.33, 2.6.34, 2.6.35, 2.6.36, 2.6.37, 2.6.38, 2.6.39, 3.14, 3.15)
timeoutpwn=(3.4, 3.5, 3.6, 3.7, 3.8, 3.8.9, 3.9, 3.10, 3.11, 3.12, 3.13, 3.4.0, 3.5.0, 3.6.0, 3.7.0, 3.8.0, 3.8.5, 3.8.6, 3.8.9, 3.9.0, 3.9.6, 3.10.0, 3.10.6, 3.11.0, 3.12.0, 3.13.0, 3.13.1)
perf_swevent=(3.0.0, 3.0.1, 3.0.2, 3.0.3, 3.0.4, 3.0.5, 3.0.6, 3.1.0, 3.2, 3.3, 3.4.0, 3.4.1, 3.4.2, 3.4.3, 3.4.4, 3.4.5, 3.4.6, 3.4.8, 3.4.9, 3.5, 3.6, 3.7, 3.8.0, 3.8.1, 3.8.2, 3.8.3, 3.8.4, 3.8.5, 3.8.6, 3.8.7, 3.8.8, 3.8.9)
msr=(2.6.18, 2.6.19, 2.6.20, 2.6.21, 2.6.22, 2.6.23, 2.6.24, 2.6.25, 2.6.26, 2.6.27, 2.6.27, 2.6.28, 2.6.29, 2.6.30, 2.6.31, 2.6.32, 2.6.33, 2.6.34, 2.6.35, 2.6.36, 2.6.37, 2.6.38, 2.6.39, 3.0.0, 3.0.1, 3.0.2, 3.0.3, 3.0.4, 3.0.5, 3.0.6, 3.1.0, 3.2, 3.3, 3.4, 3.5, 3.6, 3.7.0, 3.7.6)
memodipper=(2.6.39, 3.0.0, 3.0.1, 3.0.2, 3.0.3, 3.0.4, 3.0.5, 3.0.6, 3.1.0)
american_sign_language=(2.6.0, 2.6.1, 2.6.2, 2.6.3, 2.6.4, 2.6.5, 2.6.6, 2.6.7, 2.6.8, 2.6.9, 2.6.10, 2.6.11, 2.6.12, 2.6.13, 2.6.14, 2.6.15, 2.6.16, 2.6.17, 2.6.18, 2.6.19, 2.6.20, 2.6.21, 2.6.22, 2.6.23, 2.6.24, 2.6.25, 2.6.26, 2.6.27, 2.6.28, 2.6.29, 2.6.30, 2.6.31, 2.6.32, 2.6.33, 2.6.34, 2.6.35, 2.6.36)
full_nelson=(2.6.31, 2.6.32, 2.6.35, 2.6.37)
half_nelson=(2.6.0, 2.6.1, 2.6.2, 2.6.3, 2.6.4, 2.6.5, 2.6.6, 2.6.7, 2.6.8, 2.6.9, 2.6.10, 2.6.11, 2.6.12, 2.6.13, 2.6.14, 2.6.15, 2.6.16, 2.6.17, 2.6.18, 2.6.19, 2.6.20, 2.6.21, 2.6.22, 2.6.23, 2.6.24, 2.6.25, 2.6.26, 2.6.27, 2.6.28, 2.6.29, 2.6.30, 2.6.31, 2.6.32, 2.6.33, 2.6.34, 2.6.35, 2.6.36)
rds=(2.6.30, 2.6.31, 2.6.32, 2.6.33, 2.6.34, 2.6.35, 2.6.36)
pktcdvd=(2.6.0, 2.6.1, 2.6.2, 2.6.3, 2.6.4, 2.6.5, 2.6.6, 2.6.7, 2.6.8, 2.6.9, 2.6.10, 2.6.11, 2.6.12, 2.6.13, 2.6.14, 2.6.15, 2.6.16, 2.6.17, 2.6.18, 2.6.19, 2.6.20, 2.6.21, 2.6.22, 2.6.23, 2.6.24, 2.6.25, 2.6.26, 2.6.27, 2.6.28, 2.6.29, 2.6.30, 2.6.31, 2.6.32, 2.6.33, 2.6.34, 2.6.35, 2.6.36)
ptrace_kmod2=(2.6.26, 2.6.27, 2.6.28, 2.6.29, 2.6.30, 2.6.31, 2.6.32, 2.6.33, 2.6.34)
video4linux=(2.6.0, 2.6.1, 2.6.2, 2.6.3, 2.6.4, 2.6.5, 2.6.6, 2.6.7, 2.6.8, 2.6.9, 2.6.10, 2.6.11, 2.6.12, 2.6.13, 2.6.14, 2.6.15, 2.6.16, 2.6.17, 2.6.18, 2.6.19, 2.6.20, 2.6.21, 2.6.22, 2.6.23, 2.6.24, 2.6.25, 2.6.26, 2.6.27, 2.6.28, 2.6.29, 2.6.30, 2.6.31, 2.6.32, 2.6.33)
can_bcm=(2.6.18, 2.6.19, 2.6.20, 2.6.21, 2.6.22, 2.6.23, 2.6.24, 2.6.25, 2.6.26, 2.6.27, 2.6.28, 2.6.29, 2.6.30, 2.6.31, 2.6.32, 2.6.33, 2.6.34, 2.6.35, 2.6.36)
reiserfs=(2.6.18, 2.6.19, 2.6.20, 2.6.21, 2.6.22, 2.6.23, 2.6.24, 2.6.25, 2.6.26, 2.6.27, 2.6.28, 2.6.29, 2.6.30, 2.6.31, 2.6.32, 2.6.33, 2.6.34)
pipec_32bit=(2.4.4, 2.4.5, 2.4.6, 2.4.7, 2.4.8, 2.4.9, 2.4.10, 2.4.11, 2.4.12, 2.4.13, 2.4.14, 2.4.15, 2.4.16, 2.4.17, 2.4.18, 2.4.19, 2.4.20, 2.4.21, 2.4.22, 2.4.23, 2.4.24, 2.4.25, 2.4.26, 2.4.27, 2.4.28, 2.4.29, 2.4.30, 2.4.31, 2.4.32, 2.4.33, 2.4.34, 2.4.35, 2.4.36, 2.4.37, 2.6.15, 2.6.16, 2.6.17, 2.6.18, 2.6.19, 2.6.20, 2.6.21, 2.6.22, 2.6.23, 2.6.24, 2.6.25, 2.6.26, 2.6.27, 2.6.28, 2.6.29, 2.6.30, 2.6.31)
udp_sendmsg_32bit=(2.6.1, 2.6.2, 2.6.3, 2.6.4, 2.6.5, 2.6.6, 2.6.7, 2.6.8, 2.6.9, 2.6.10, 2.6.11, 2.6.12, 2.6.13, 2.6.14, 2.6.15, 2.6.16, 2.6.17, 2.6.18, 2.6.19)
sock_sendpage=(2.4.4, 2.4.5, 2.4.6, 2.4.7, 2.4.8, 2.4.9, 2.4.10, 2.4.11, 2.4.12, 2.4.13, 2.4.14, 2.4.15, 2.4.16, 2.4.17, 2.4.18, 2.4.19, 2.4.20, 2.4.21, 2.4.22, 2.4.23, 2.4.24, 2.4.25, 2.4.26, 2.4.27, 2.4.28, 2.4.29, 2.4.30, 2.4.31, 2.4.32, 2.4.33, 2.4.34, 2.4.35, 2.4.36, 2.4.37, 2.6.0, 2.6.1, 2.6.2, 2.6.3, 2.6.4, 2.6.5, 2.6.6, 2.6.7, 2.6.8, 2.6.9, 2.6.10, 2.6.11, 2.6.12, 2.6.13, 2.6.14, 2.6.15, 2.6.16, 2.6.17, 2.6.18, 2.6.19, 2.6.20, 2.6.21, 2.6.22, 2.6.23, 2.6.24, 2.6.25, 2.6.26, 2.6.27, 2.6.28, 2.6.29, 2.6.30)
sock_sendpage2=(2.4.4, 2.4.5, 2.4.6, 2.4.7, 2.4.8, 2.4.9, 2.4.10, 2.4.11, 2.4.12, 2.4.13, 2.4.14, 2.4.15, 2.4.16, 2.4.17, 2.4.18, 2.4.19, 2.4.20, 2.4.21, 2.4.22, 2.4.23, 2.4.24, 2.4.25, 2.4.26, 2.4.27, 2.4.28, 2.4.29, 2.4.30, 2.4.31, 2.4.32, 2.4.33, 2.4.34, 2.4.35, 2.4.36, 2.4.37, 2.6.0, 2.6.1, 2.6.2, 2.6.3, 2.6.4, 2.6.5, 2.6.6, 2.6.7, 2.6.8, 2.6.9, 2.6.10, 2.6.11, 2.6.12, 2.6.13, 2.6.14, 2.6.15, 2.6.16, 2.6.17, 2.6.18, 2.6.19, 2.6.20, 2.6.21, 2.6.22, 2.6.23, 2.6.24, 2.6.25, 2.6.26, 2.6.27, 2.6.28, 2.6.29, 2.6.30)
exit_notify=(2.6.25, 2.6.26, 2.6.27, 2.6.28, 2.6.29)
udev=(2.6.25, 2.6.26, 2.6.27, 2.6.28, 2.6.29)
ftrex=(2.6.11, 2.6.12, 2.6.13, 2.6.14, 2.6.15, 2.6.16, 2.6.17, 2.6.18, 2.6.19, 2.6.20, 2.6.21, 2.6.22)
vmsplice2=(2.6.23, 2.6.24)
vmsplice1=(2.6.17, 2.6.18, 2.6.19, 2.6.20, 2.6.21, 2.6.22, 2.6.23, 2.6.24, 2.6.24.1)
h00lyshit=(2.6.8, 2.6.10, 2.6.11, 2.6.12, 2.6.13, 2.6.14, 2.6.15, 2.6.16)
raptor_prctl=(2.6.13, 2.6.14, 2.6.15, 2.6.16, 2.6.17)
elflbl=(2.4.29)
caps_to_root=(2.6.34, 2.6.35, 2.6.36)
mremap_pte=(2.4.20, 2.2.24, 2.4.25, 2.4.26, 2.4.27)
karad3=(2.6.5, 2.6.7, 2.6.8, 2.6.9, 2.6.10, 2.6.11)
dirtycow=(2.6.22, 2.6.23,2.6.24, 2.6.25, 2.6.26, 2.6.27, 2.6.28, 2.6.29, 2.6.30, 2.6.31, 2.6.32, 2.6.33, 2.6.34, 2.6.35, 2.6.36, 2.6.37, 2.6.38, 2.6.39, 3.0.0, 3.0.1, 3.0.2, 3.0.3, 3.0.4, 3.0.5, 3.0.6, 3.1.0, 3.2.0, 3.3.0, 3.4.0, 3.4.1, 3.4.2, 3.4.3, 3.4.4, 3.4.5, 3.4.6, 3.4.8, 3.4.9, 3.5, 3.6, 3.7, 3.8.0, 3.8.1, 3.8.2, 3.8.3, 3.8.4, 3.8.5, 3.8.6, 3.8.7, 3.8.8, 3.8.9, 3.9.0)

if [[ $# -eq 0 ]]; then
	echo -e "[*] Kernel-Exploits search script"
	echo -e "[*] Install: ./ksploit --install"
	echo -e "[*] Example: ./ksploit 2.6.0"
	echo -e "[*] Verbose: ./ksploit 2.6.0 -v"
	exit 0
fi

if [ $1 == "--install" ]; then
       git clone https://github.com/m0tda/kernel-exploits.git
       exit 0
fi

if [[ $1 =~ ^[0-9]{1}\.[0-9]{1,2}\.[0-9]{1,2}$ ]]; then
	echo -e "\e[00;31m[+] Linux kernel $1 possible exploits:\e[00m"
	echo

#pp_key
case "${pp_key[@]}" in *"$1"*)
	if [[ $2 == "-v" ]]; then
		echo -e "\e[00;31m[-] pp_key exploit untested\e[00m"
		echo -e "\e[00;31m[+] Reference:\e[00m http://perception-point.io/2016/01/14/analysis-and-exploitation-of-a-linux-kernel-vulnerability-cve-2016-0728/"
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name pp_key_64* 2>/dev/null
		echo
	elif [[ $2 -eq 0  ]]; then
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name pp_key_64* 2>/dev/null
		echo
	fi
;; esac

#overlayfs
case "${overlayfs[@]}" in *"$1"*)
	if [[ $2 == "-v" ]]; then
		echo -e "\e[00;31m[+] overlayfs exploit tested on:\e[00m"
		echo -e "Ubuntu 14.10 - Linux ubuntu 3.16.0-23-generic #31-Ubuntu x86_64"
		echo -e "Ubuntu 14.04 - Linux ubuntu 3.13.0-24-generic #46-Ubuntu x86_64"
		echo -e "Ubuntu 14.04 - Linux ubuntu 3.16.0-30-generic #40~14.04.1-Ubuntu x86_64"
		echo -e "Ubuntu 14.04 - Linux ubuntu 3.13.0-24-generic #46-Ubuntu x86_32"
		echo -e "Ubuntu 14.10 - Linux ubuntu 3.16.0-23-generic #31-Ubuntu x86_32"
		echo -e "\e[00;31m[+] Reference:\e[00m https://www.exploit-db.com/exploits/37292/"
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name ofs_* 2>/dev/null
		echo
	elif [[ $2 -eq 0 ]]; then
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name ofs_* 2>/dev/null
		echo
	fi
;; esac

#rawmodePTY
case "${rawmodePTY[@]}" in *"$1"*) 
	if [[ $2 == "-v" ]]; then
		echo -e "\e[00;31m[-] rawmode exploit untested\e[00m"
		echo -e "\e[00;31m[+] Reference:\e[00m http://packetstormsecurity.com/files/download/126603/cve-2014-0196-md.c"
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name rawmodePTY* 2>/dev/null 
		echo
	elif [[ $2 -eq 0 ]]; then
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name rawmodePTY* 2>/dev/null 
		echo
	fi
;; esac

#timeoutpwn
case "${timeoutpwn[@]}" in *"$1"*)
	if [[ $2 == "-v" ]]; then
		echo -e "\e[00;31m[+] timeoutpwn exploit tested on:\e[00m"
		echo -e "Ubuntu 13.10 - Linux ubuntu 3.11.0-12-generic #19-Ubuntu x86_64"
		echo -e "\e[00;31m[+] Reference:\e[00m http://www.exploit-db.com/exploits/31346/"
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name timeoutpwn* 2>/dev/null 
		echo
	elif [[ $2 -eq 0 ]]; then
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name timeoutpwn* 2>/dev/null 
		echo
	fi
;; esac

#perf_swevent
case "${perf_swevent[@]}" in *"$1"*)  
	if [[ $2 == "-v" ]]; then
		echo -e "\e[00;31m[+] perf_swevent exploit tested on:\e[00m"
		echo -e "Ubuntu 12.04.2 - Linux ubuntu 3.5.0-23-generic #35-Ubuntu x86_64"
		echo -e "Ubuntu 12.04.0 - Linux ubuntu 3.2.0-23-generic #36-Ubuntu x86_64"
		echo -e "Ubuntu 12.04.1 - Linux ubuntu 3.2.0-29-generic #46-Ubuntu x86_64"
		echo -e "Ubuntu 12.04.2 - Linux ubuntu 3.5.0-23-generic #35-Ubuntu x86_64"
		echo -e "\e[00;31m[+] Reference:\e[00m http://www.exploit-db.com/exploits/26131"
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name perf_swevent* 2>/dev/null 
		echo
	elif [[ $2 -eq 0 ]]; then
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name perf_swevent* 2>/dev/null 
		echo
	fi
;; esac

#msr
case "${msr[@]}" in *"$1"*) 
	if [[ $2 == "-v" ]]; then
		echo -e "\e[00;31m[-] msr exploit untested \e[00m"
		echo -e "\e[00;31m[+] Reference:\e[00m http://www.exploit-db.com/exploits/27297/"
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name msr* 2>/dev/null 
		echo
	elif [[ $2 -eq 0 ]]; then
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name msr* 2>/dev/null 
		echo
	fi
;; esac

#memodipper
case "${memodipper[@]}" in *"$1"*)
	if [[ $2 == "-v" ]]; then
		echo -e "\e[00;31m[+] memodipper tested on: \e[00m"
		echo -e "Ubuntu 11.10 - 3.0.0-12-server #20-Ubuntu x86_64"
		echo -e "Ubuntu 11.10 - 3.0.0-12-generic-pae #20-Ubuntu x86_32"
		echo -e "\e[00;31m[+] Reference:\e[00m http://www.exploit-db.com/exploits/18411/"
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name memodipper* 2>/dev/null 
		echo
	elif [[ $2 -eq 0 ]]; then
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name memodipper* 2>/dev/null 
		echo
	fi
;; esac

#american-sign-language
case "${american_sign_language[@]}" in *"$1"*) 
	if [[ $2 == "-v" ]]; then
		echo -e "\e[00;31m[-] american-sign-language exploit untested\e[00m"
		echo -e "\e[00;31m[+] Reference:\e[00m http://www.securityfocus.com/bid/45408/"
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name american-sign-language* 2>/dev/null 
		echo
	elif [[ $2 -eq 0 ]]; then
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name american-sign-language* 2>/dev/null 
		echo
	fi
;; esac

#full-nelson
case "${full_nelson[@]}" in *"$1"*) 
	if [[ $2 == "-v" ]]; then
		echo -e "\e[00;31m[+] full-nelson tested on: \e[00m"
		echo -e "Ubuntu 10.10 - 2.6.35-19-server #28-Ubuntu x86_64"
		echo -e "Ubuntu 9.10 - 2.6.31-14-server #48-Ubuntu x86_64"
		echo -e "Ubuntu 10.04.1 - 2.6.32-24-server #39-Ubuntu x86_64"
		echo -e "Ubuntu 10.04 - 2.6.32-21-server #32-Ubuntu x86_64m"
		echo -e "Ubuntu 10.10 - 2.6.35-19-generic-pae #28-Ubuntu x86_32"
		echo -e "Ubuntu 9.10 - 2.6.31-14-generic-pae #48-Ubuntu x86_32"
		echo -e "\e[00;31m[+] Reference:\e[00m https://www.exploit-db.com/exploits/15704/"
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name full-nelson* 2>/dev/null 
		echo
	elif [[ $2 -eq 0 ]]; then
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name full-nelson* 2>/dev/null 
		echo
	fi
;; esac

#half-nelson
case "${half_nelson[@]}" in *"$1"*)
	if [[ $2 == "-v" ]]; then
		echo -e "\e[00;31m[+] half-nelson tested on: \e[00m"
		echo -e "Ubuntu 10.04 - Linux ubuntu 2.6.32-21-server #32-Ubuntu x86_64"
		echo -e "Ubuntu 9.10 - 2.6.31-14-server #48-Ubuntu x86_64"
		echo -e "\e[00;31m[+] Reference:\e[00m http://www.exploit-db.com/exploits/17787/"
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name half-nelson* 2>/dev/null 
		echo
	elif [[ $2 -eq 0 ]]; then
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name half-nelson* 2>/dev/null 
		echo
	fi
;; esac

#rds
case "${rds[@]}" in *"$1"*) 
	if [[ $2 == "-v" ]]; then
		echo -e "\e[00;31m[+] rds exploit tested on: \e[00m"
		echo -e "Debian 6 - Linux 2.6.31-1-amd64 x86_64"
		echo -e "Debian 6 - Linux 2.6.32-trunk-amd64 x86_64"
		echo -e "Debian 6 - Linux 2.6.34-1-amd64 x86_64"
		echo -e "Debian 6 - Linux 2.6.35-trunk-amd64 x86_64"
		echo -e "Ubuntu 10.10 - 2.6.35-19-server #28-Ubuntu x86_64"
		echo -e "Ubuntu 10.04.1 - 2.6.32-24-server #39-Ubuntu x86_64"
		echo -e "Ubuntu 10.04 - 2.6.32-21-server #32-Ubuntu x86_64"
		echo -e "Ubuntu 9.10 - 2.6.31-14-server #48-Ubuntu x86_64"
		echo -e "Debian 6 - Linux 2.6.31-1-686 32bit"
		echo -e "Ubuntu 10.10 - 2.6.35-19-generic-pae #28-Ubuntu x86_32"
		echo -e "Ubuntu 10.04 - 2.6.32-21-generic-pae #32-Ubuntu x86_32"
		echo -e "Ubuntu 10.04.1 - 2.6.32-24-generic-pae #39-Ubuntu x86_32"
		echo -e "Ubuntu 9.10 - 2.6.31-14-generic-pae #48-Ubuntu x86_32"
		echo -e "\e[00;31m[+] Reference:\e[00m http://www.exploit-db.com/exploits/15285/"
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name rds* 2>/dev/null 
		echo
	elif [[ $2 -eq 0 ]]; then
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name rds* 2>/dev/null 
		echo
	fi
;; esac

#pktcdvd
case "${pktcdvd[@]}" in *"$1"*)
	if [[ $2 == "-v" ]]; then
		echo -e "\e[00;31m[-] pktcdvd exploit untested \e[00m"
		echo -e "\e[00;31m[+] Reference:\e[00m http://www.exploit-db.com/exploits/15150/"
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name pktcdvd* 2>/dev/null 
		echo
	elif [[ $2 -eq 0 ]]; then
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name pktcdvd* 2>/dev/null 
		echo
	fi
;; esac

#ptrace_kmod2
case "${trace_kmod2[@]}" in *"$1"*) 
	if [[ $2 == "-v" ]]; then
		echo -e "\e[00;31m[+] ptrace_kmod2 tested on: \e[00m"
		echo -e "Debian 6 - Linux 2.6.32-trunk-amd64 x86_64"
		echo -e "Debian 6 - Linux 2.6.33-2-amd64 x86_64"
		echo -e "Debian 6 - Linux 2.6.34-1-amd64 x86_64"
		echo -e "Debian 6 - Linux 2.6.35-trunk-amd64 x86_64"
		echo -e "Ubuntu 10.10 - 2.6.35-19-server #28-Ubuntu x86_64"
		echo -e "Ubuntu 10.04.1 - 2.6.32-24-server #39-Ubuntu x86_64"
		echo -e "Ubuntu 10.04 - 2.6.32-21-server #32-Ubuntu x86_64"
		echo -e "\e[00;31m[+] Reference:\e[00m http://www.exploit-db.com/exploits/15023/"
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name ptrace_kmod2* 2>/dev/null 
		echo
	elif [[ $2 -eq 0 ]]; then
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name ptrace_kmod2* 2>/dev/null 
		echo
	fi
;; esac

#video4linux
case "${video4linux[@]}" in *"$1"*) 
	if [[ $2 == "-v" ]]; then
		echo -e "\e[00;31m[-] video4linux untested \e[00m"
		echo -e "\e[00;31m[+] Reference:\e[00m http://www.exploit-db.com/exploits/15024/"
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name video4linux* 2>/dev/null 
		echo
	elif [[ $2 -eq 0 ]]; then
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name video4linux* 2>/dev/null 
		echo
	fi
;; esac

#can_bcm
case "${can_bcm[@]}" in *"$1"*) 
	if [[ $2 == "-v" ]]; then
		echo -e "\e[00;31m[+] can_bcm exploit tested on: \e[00m"
		echo -e "\e[00;31m[+] Reference:\e[00m http://www.exploit-db.com/exploits/14814/"
		echo -e "Ubuntu 10.04.1 - 2.6.32-24-generic #39-Ubuntu x86_32"
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name can_bcm* 2>/dev/null 
		echo
	elif [[ $2 -eq 0 ]]; then
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name can_bcm* 2>/dev/null 
		echo
	fi
;; esac

#reiserfs
case "${reiserfs[@]}" in *"$1"*) 
	if [[ $2 == "-v" ]]; then
		echo -e "\e[00;31m[-] reiserfs exploit untested]\e[00m"
		echo -e "\e[00;31m[+] Reference:\e[00m http://www.exploit-db.com/exploits/12130/"
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name reiserfs* 2>/dev/null 
		echo
	elif [[ $2 -eq 0 ]]; then
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name reiserfs* 2>/dev/null 
		echo
	fi
;; esac

#pipec_32bit
case "${pipec_32bit[@]}" in *"$1"*) 
	if [[ $2 == "-v" ]]; then
		echo -e "\e[00;31m[-] pipec_32bit untested \e[00m"
		echo -e "\e[00;31m[+] Reference:\e[00m http://www.securityfocus.com/data/vulnerabilities/exploits/36901-1.c"
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name pipec_32bit* 2>/dev/null 
		echo
	elif [[ $2 -eq 0 ]]; then
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name pipec_32bit* 2>/dev/null 
		echo
	fi
;; esac

#udp_sendmsg_32bit
case "${udp_sendmsg_32bit[@]}" in *"$1"*) 
	if [[ $2 == "-v" ]]; then
		echo -e "\e[00;31m[-] udp_sendmsg_32bit untested \e[00m"
		echo -e "\e[00;31m[+] Reference:\e[00m http://downloads.securityfocus.com/vulnerabilities/exploits/36108.c"
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name udp_sendmsg_32bit* 2>/dev/null 
		echo
	elif [[ $2 -eq 0 ]]; then
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name udp_sendmsg_32bit* 2>/dev/null 
		echo
	fi
;; esac

#sock_sendpage
case "${sock_sendpage[@]}" in *"$1"*) 
	if [[ $2 == "-v" ]]; then
		echo -e "\e[00;31m[-] sock_sendpage untested \e[00m"
		echo -e "\e[00;31m[+] Reference:\e[00m http://www.exploit-db.com/exploits/9435"
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name sock_sendpage.txt 2>/dev/null 
		echo
	elif [[ $2 -eq 0 ]]; then
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name sock_sendpage.txt 2>/dev/null 
		echo
	fi
;; esac

#sock_sendpage2
case "${sock_sendpage2[@]}" in *"$1"*)
	if [[ $2 == "-v" ]]; then
		echo -e "\e[00;31m[-] sock_sendpage2 untested \e[00m"
		echo -e "\e[00;31m[+] Reference:\e[00m http://www.exploit-db.com/exploits/9436"
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name sock_sendpage2* 2>/dev/null 
		echo
	elif [[ $2 -eq 0 ]]; then
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name sock_sendpage2* 2>/dev/null 
		echo
	fi
;; esac

#exit_notify
case "${exit_notify[@]}" in *"$1"*) 
	if [[ $2 == "-v" ]]; then
		echo -e "\e[00;31m[-] exit_notify exploit untested \e[00m"
		echo -e "\e[00;31m[+] Reference:\e[00m http://www.exploit-db.com/exploits/8369"
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name exit_notify* 2>/dev/null 
		echo
	elif [[ $2 -eq 0 ]]; then
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name exit_notify* 2>/dev/null 
		echo
	fi
;; esac

#udev
case "${udev[@]}" in *"$1"*) 
	if [[ $2 == "-v" ]]; then
		echo -e "\e[00;31m[-] udev exploit untested \e[00m"
		echo -e "\e[00;31m[+] Reference:\e[00m http://www.exploit-db.com/exploits/8478"
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name udev* 2>/dev/null 
		echo
	elif [[ $2 -eq 0 ]]; then
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name udev* 2>/dev/null 
		echo
	fi
;; esac

#ftrex
case "${ftrex[@]}" in *"$1"*) 
	if [[ $2 == "-v" ]]; then
		echo -e "\e[00;31m[-] ftrex exploit untested \e[00m"
		echo -e "\e[00;31m[+] Reference:\e[00m http://www.exploit-db.com/exploits/6851"
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name ftrex* 2>/dev/null 
		echo
	elif [[ $2 -eq 0 ]]; then
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name ftrex* 2>/dev/null 
		echo
	fi
;; esac

#vmsplice1
case "${vmsplice1[@]}" in *"$1"*) 
	if [[ $2 == "-v" ]]; then
		echo -e "\e[00;31m[-] vmsplice1 untested \e[00m"
		echo -e "\e[00;31m[+] Reference:\e[00m http://www.exploit-db.com/exploits/5092"
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name vmsplice1* 2>/dev/null 
		echo
	elif [[ $2 -eq 0 ]]; then
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name vmsplice1* 2>/dev/null 
		echo
	fi
;; esac

#vmsplice2
case "${vmsplice2[@]}" in *"$1"*) 
	if [[ $2 == "-v" ]]; then
		echo -e "\e[00;31m[-] vmsplice2 untested \e[00m"
		echo -e "\e[00;31m[+] Reference:\e[00m http://www.exploit-db.com/exploits/5093"
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name vmsplice2* 2>/dev/null 
		echo
	elif [[ $2 -eq 0 ]]; then
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name vmsplice2* 2>/dev/null 
		echo
	fi
;; esac

#h00lyshit
case "${h00lyshit[@]}" in *"$1"*) 
	if [[ $2 == "-v" ]]; then
		echo -e "\e[00;31m[-] h00lyshit exploit untested \e[00m"
		echo -e "\e[00;31m[+] Reference:\e[00m http://www.exploit-db.com/exploits/2013/"
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name h00lyshit* 2>/dev/null 
		echo
	elif [[ $2 -eq 0 ]]; then
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name h00lyshit* 2>/dev/null 
		echo
	fi
;; esac

#raptor_prctl
case "${raptor_prctl[@]}" in *"$1"*) 
	if [[ $2 == "-v" ]]; then
		echo -e "\e[00;31m[-] raptor_prctl exploit untested \e[00m"
		echo -e "\e[00;31m[+] Reference:\e[00m http://www.exploit-db.com/exploits/2031/"
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name raptor_prctl* 2>/dev/null 
		echo
	elif [[ $2 -eq 0 ]]; then
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name raptor_prctl* 2>/dev/null 
		echo
	fi
;; esac

#elflbl
case "${elflbl[@]}" in *"$1"*) 
	if [[ $2 == "-v" ]]; then
		echo -e "\e[00;31m[-] elflbl exploit untested \e[00m"
		echo -e "\e[00;31m[+] Reference:\e[00m http://www.exploit-db.com/exploits/744/"
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name elflbl* 2>/dev/null 
		echo
	elif [[ $2 -eq 0 ]]; then
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name elflbl* 2>/dev/null 
		echo
	fi
;; esac

#caps_to_root
case "${caps_to_root[@]}" in *"$1"*) 
	if [[ $2 == "-v" ]]; then
		echo -e "\e[00;31m[-] caps_to_root untested \e[00m"
		echo -e "\e[00;31m[+] Reference:\e[00m http://www.exploit-db.com/exploits/15916/"
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name caps_to_root* 2>/dev/null 
		echo
	elif [[ $2 -eq 0 ]]; then
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name caps_to_root* 2>/dev/null 
		echo
	fi
;; esac

#mremap_pte
case "${mremap_pte[@]}" in *"$1"*) 
	if [[ $2 == "-v" ]]; then
		echo -e "\e[00;31m[-] mremap_pte untested \e[00m"
		echo -e "\e[00;31m[+] Reference:\e[00m http://www.exploit-db.com/exploits/15916/"
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name mremap_pte* 2>/dev/null 
		echo
	elif [[ $2 -eq 0 ]]; then
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name mremap_pte* 2>/dev/null 
		echo
	fi
;; esac

#krad3
case "${krad3[@]}" in *"$1"*) 
	if [[ $2 == "-v" ]]; then
		echo -e "\e[00;31m[-] krad3 exploit untested \e[00m"
		echo -e "\e[00;31m[+] Reference:\e[00m http://exploit-db.com/exploits/1397"
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name krad3* 2>/dev/null 
		echo
	elif [[ $2 -eq 0 ]]; then
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name krad3* 2>/dev/null 
		echo
	fi
;; esac

#dirtycow
case "${dirtycow[@]}" in *"$1"*) 
	if [[ $2 == "-v" ]]; then
		echo -e "\e[00;31m[-] dirtycow exploit untested \e[00m"
		echo -e "\e[00;31m[+] Reference:\e[00m https://www.exploit-db.com/exploits/40839/"
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name dirty* 2>/dev/null 
		echo
	elif [[ $2 -eq 0 ]]; then
		echo -e "\e[00;31m[+] Exploits locations:\e[00m"
		find `pwd` -type f -name dirty* 2>/dev/null 
		echo
	fi
;; esac
fi
