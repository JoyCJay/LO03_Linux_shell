#!/bin/bash

a=31-28-31-30-31-30-31-31-30-31-30-31
tableau_array=($(echo $a | sed 's/-/ /g'))
sum=(0 31 59 90 120 151 181 212 243 273 304 334 365)

while read ligne
do 
	jour=$(echo "$ligne" | cut -d"/" -f 1 )
	mois=$(echo "$ligne" | cut -d"/" -f 2 )
	an=$(echo "$ligne" | cut -d"/" -f 3 )
	days=`expr $an \* 365 + ${sum[$mois - 1]} + $jour`
	echo "$ligne --> $days"
done < date.txt
