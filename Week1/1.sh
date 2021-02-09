#!/bin/bash
#we are going to use sed command
#short for stream editor
#used to list,replace,delete the files in a stream, etc
#here we are going to use /d command, to delete
#-i flag is used to delete in-place.
echo 'Delete words in file'
echo 'Enter word'
read word
sed -i "/$word/d" $*
