#!/bin/bash
echo "Enter the jumbled array"
for(( i=0; i < 5; i++))
do
  read arr[$i]
done
echo "The entered array is : "
for(( i = 0; i < 5 ; i++ ))
do
  echo ${arr[$i]}
done

echo "Sorted array is : "
for(( i = 0; i < 5; i++ ))
do
  for(( j = $i; j < 5; j++ ))
  do
    if [ ${arr[$i]} -gt ${arr[$j]} ]; then
      t=${arr[$i]}
      arr[$i]=${arr[$j]}
      arr[$j]=$t
    fi
  done
done
echo ${arr[*]}
