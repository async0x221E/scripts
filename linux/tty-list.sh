#!/bin/bash

echo "[+] Spawning a TTY shell [+]"

#list
if [[ $# -eq 0 ]]; then
  echo "[+] Ex: ./tty <args>"
  echo "[-]"                
  echo "[~] Args;"         
  echo "[~] python"
  echo "[~] echo" 
  echo "[~] sh"  
  echo "[~] perl"
  echo "[~] perl2" 
  echo "[~] ruby" 
  echo "[~] lua" 
  echo "[~] irb"
  echo "[~] vi" 
  echo "[~] vi2"
  echo "[~] nmap"
  exit 0
fi

if [ "$1" == "python"  ]; then
  echo "python -c 'import pty; pty.spawn(\"/bin/sh\")'"
else
  :
fi 

if [ "$1" == "echo" ]; then
  echo "echo os.system('/bin/sh')"
else
  :
fi

if [ "$1" == "sh" ]; then
  echo "/bin/sh -i"
else
  :
fi

if [ "$1" == "perl" ]; then
  echo "perl -e 'exec \"/bin/sh\";"
else
  :
fi

if [ "$1" == "perl2" ]; then
  echo "perl: exec \"/bin/sh\""
else
  :
fi

if [ "$1" == "ruby" ]; then
  echo "ruby: exec \"/bin/sh\""
else
  :
fi

if [ "$1" == "lua" ]; then
  echo "lua: os.execute('/bin/sh')"
else
  :
fi

if [ "$1" == "irb" ]; then
  echo "exec \"/bin/sh\""
else
  :
fi

if [ "$1" == "vi" ]; then
  echo ":!sh"
else
  :
fi

if [ "$1" == "vi2" ]; then
  echo ":set shell=/bin/sh:shell"
else
  :
fi

if [ "$1" == "nmap" ]; then
  echo "!sh"
else
  :
fi
