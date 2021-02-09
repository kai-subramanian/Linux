#!/bin/bash
if [ $1!=$2!=$3 ]
then
  if [[ $1 -gt $2 && $1 -gt $3 ]] ; then
    echo "$1 is largest number"
  fi

  if [[ $2 -gt $3 && $2 -gt $1 ]] ; then
    echo "$3 is largest number"
  fi

  if [[ $3 -gt $2 && $3 -gt $1 ]] ; then
    echo "$3 is largest number"
  fi
fi
if [[ $1==$2 && $1 -gt $3 ]] ; then
  echo "$1 is largest number"
fi
