#! /bin/bash

for i in $(ls $1)
do 
	if test -d $i
	then
		d=`expr $d + 1`
	elif test -f $i
	then
		f=`expr $f + 1`
	fi
done
echo "Dans le repertoire $1 ,$d repertoire"
echo "Dans le repertoire $1 ,$f documents"
