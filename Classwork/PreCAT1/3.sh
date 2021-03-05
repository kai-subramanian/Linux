#!/bin/bash
echo "Enter directory path"
read dir
if [ -d $dir ]
then
echo -e "\e[31mLIST OF EVERYTHING IN PATH\e[0m"
ls -l $dir
echo -e "\e[31mLIST OF ALL DIRECTORIES IN PATH\e[0m"
ls -l $dir | grep "d"
fi
