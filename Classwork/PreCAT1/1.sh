#!/bin/bash
echo -e "\e[31mLIST OF ALL FILES\e[0m"
ls -l
echo -e "\e[31mUSER HAS READ, WRITE AND EXECUTE\e[0m"
ls -l | grep "rwx"
