#!/bin/bash
a=31-28-31-30-31-30-31-31-30-31-30-31
tableau_array=($(echo $a | sed 's/-/ /g'))

sum[0]=0
for ((i=1;i<=12;i++))
do
let j=$i-1
echo "sum[$j]=${sum[$j]},tableau_array[$j]=${tableau_array[$j]}"
let sum[$i]=${sum[$j]}+${tableau_array[$j]}
done
echo ${tableau_array[*]}

echo ${sum[*]}


export sum

