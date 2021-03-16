#!/bin/bash
echo -e "\e[31;1m***** INTERNET STATUS *****\e[0m"
ping -c 1 google.com &> /dev/null && echo -e "Internet connected" || echo -e "Internet disconnected"
echo -e "\e[31;1m***** OS TYPE AND VERSION *****\e[0m"
echo -e "OS Type : " $(uname -o)
cat /etc/os-release | grep 'NAME\|VERSION' | grep -v 'VERSION_ID'> /tmp/osrelease
echo -n -e "OS Version : " && cat /tmp/osrelease | grep -v "VERSION" | cut -f2 -d\"
echo -e "\e[31;1m***** ARCHITECTURE *****\e[0m"
arch=$(uname -m)
echo "Architecture : " $arch
echo -e "\e[31;1m***** KERNEL RELEASE *****\e[0m"
ker=$(uname -r)
echo "Kernal : " $ker
echo -e "\e[31;1m***** HOSTNAME *****\e[0m"
echo $HOSTNAME
echo -e "\e[31;1m***** INTERNAL IP *****\e[0m"
iip=$(hostname -I)
echo "Internal IP : " $iip
echo -e "\e[31;1m***** EXTERNAL IP *****\e[0m"
eip=$(curl -s ipecho.net/plain;echo)
echo "External IP : " $eip
echo -e "\e[31;1m***** DNS *****\e[0m"
ns=$(cat /etc/resolv.conf | sed '1 d' | awk '{print $2}')
echo "Name servers : " $ns
echo -e "\e[31;1m***** LOGGED IN USERS  *****\e[0m"
who>/tmp/who
echo "Logged in users : " && cat /tmp/who 
echo -e "\e[31;1m***** RAM AND SWAP USAGE*****\e[0m"
free -h | grep -v + >/tmp/ramcache
echo "Ram usage : " && cat /tmp/ramcache | grep -v "Swap"
echo "Swap usage : " && cat /tmp/ramcache | grep -v "Mem"
echo -e "\e[31;1m***** DISK USAGE *****\e[0m"
df -h |sort -rn | head -5 | grep 'Filesystem|\/dev/sda*' > /tmp/diskusage
echo -e "Disk usage : " && df -h
echo -e "\e[31;1m***** LOAD AVERAGE *****\e[0m"
la=$(top -n 1 -b | grep "load average: " | awk '{print $10 $11 $12}')
echo "Load Average : " $la
echo -e "\e[31;1m***** SYSTEM UPTIME *****\e[0m"
sup=$(uptime | awk '{print $3 $4}' | cut -f1 -d,)
echo "Uptime (in Hours:Minutes) : " $sup
