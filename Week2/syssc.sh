#!/bin/bash
echo -e "\e[31;1m***** HOSTNAME INFORMATION *****\e[0m"
hostnamectl
echo ""
echo -e "\e[31;1m***** FILE SYSTEM DISK SPACE USAGE *****\e[0m"
df -h 
echo ""
echo -e "\e[31;1m***** FREE AND USED MEMORY *****\e[0m"
free
echo ""
echo -e "\e[31;1m***** SYSTEM UPTIME AND LOAD *****\e[0m"
uptime
echo ""
echo -e "\e[31;1m***** TOP 5 MEMORY CONSUMERS *****\e[0m"
ps -eo %mem,%cpu,comm --sort=-%mem | head -n 6
echo ""
echo -e "\e[31;1m***** LOGGED IN USERS NOW *****\e[0m"
who
echo ""
