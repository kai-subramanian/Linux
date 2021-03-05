#!/bin/bash
echo "Enter a number"
read num
x=1
for((i=2;i<=num;i++))
{
	x=$((x*i))
}
echo "Factorial is $x"
