#! /bin/bash

test -e poubelle
if [ $? -eq 0 ]
then
	echo "poubelle existe"
else
	mkdir poubelle
	echo "poubelle cree"
fi

echo $#
for delete in $*
do
	mv $delete ~/my_cmd/poubelle
done

#find -h +3 *
