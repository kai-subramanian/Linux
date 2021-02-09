#!/bin/bash
echo "Enter upto which number sum should be found"
read num
for (( i=0;i<=num;i++ ))
{
  sum=$((sum + i))
}
echo "Sum is $sum"
