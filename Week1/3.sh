#!/bin/bash
echo "Enter basic salary"
read basic

if [ $basic -lt 1500 ]; then
  hra=$(expr 0.1*"$basic" |bc)
  da=$(expr 0.9*"$basic" |bc)
  tot=$(expr "$basic"+"$hra"+"$da" |bc)
  echo "Gross salary is $tot"
fi
if [[ $basic -ge 1500 ]]; then
  hra=$(expr 500)
  da=$(expr 0.98*"$basic" |bc)
  tot=$(expr "$basic"+"$hra"+"$da" |bc)
  echo "Gross salary is $tot"
fi
