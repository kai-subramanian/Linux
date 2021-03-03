#!/bin/bash
echo -e "\e[31;1m***** PROCESS MANAGEMENT *****\e[0m"
echo -e "\e[31;1m***** BG AND FG COMMAND DEMO *****\e[0m"
set -m
rhythmbox & kill -s STOP $(pidof rhythmbox)
bg
fg "%rhythmbox"
echo -e "\e[31;1m***** CLOSED RHYTHMBOX PROCESS *****\e[0m"
echo -e "\e[31;1m***** TOP COMMAND *****\e[0m"
top
echo -e "\e[31;1m***** PS COMMAND *****\e[0m"
ps
echo -e "\e[31;1m***** NICE VALUE *****\e[0m"
renice -n 18 $(pidof atom)
echo -e "\e[31;1m***** KILL COMMAND *****\e[0m"
kill $(pidof atom)
echo "ATOM KILLED"
echo -e "\e[31;1m***** MEMORY MANAGEMENT *****\e[0m"
echo -e "\e[31;1m***** DF COMMAND *****\e[0m"
df -h
echo -e "\e[31;1m***** FREE COMMAND  *****\e[0m"
free -m
