#!/bin/awk -f

a=31-28-31-30-31-30-31-31-30-31-30-31
tableau_array=($(echo $a | sed 's/-/ /g'))
sum=(0 31 59 90 120 151 181 212 243 273 304 334 365)

awk -F"/" '

{

  days=$3*365+sum[$2-1]+$1
  printf ("%s ---->%d\n",$0,days);
}

' ./date.txt
