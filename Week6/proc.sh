#!/bin/bash
echo -e "\e[31;1m***** Process List *****\e[0m"
ps
echo -e "\e[31;1m***** See using standard syntax *****\e[0m"  
ps -e 
echo -e "\e[31;1m***** Process Tree *****\e[0m"
ps -ejH
echo -e "\e[31;1m***** PID of particular process *****\e[0m" 
pidof chrome
echo -e "\e[31;1m***** Thread Information *****\e[0m" 
ps -ef
echo -e "\e[31;1m***** Security information *****\e[0m" 
ps -eo euser,f,comm,label
echo -e "\e[31;1m***** All processes as root *****\e[0m" 
ps -U root -u
echo -e "\e[31;1m***** User defined format list of process*****\e[0m" 
ps -eo pid,tid,class
echo -e "\e[31;1m***** PID of bash *****\e[0m" 
ps -C bash -o pid=
echo -e "\e[31;1m***** Name of PID 2 *****\e[0m" 
ps -q 2 -o comm=

