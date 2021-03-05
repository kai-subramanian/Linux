#!/bin/bash
for i in $*
do
if [ -d $i ]
then
echo "$i is a directory"
elif [ -f $i ]
then
echo "$i is a file"
echo "Number of lines in $i are:"
wc -l $i
fi
done
