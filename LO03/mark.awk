#!/bin/awk -f
BEGIN{
math_all=0
eng_all=0
com_all=0
total_a=0
FS=" "
}

{
if (NR>2)
	{
	printf("%8s %8d %8d %8d %8d %8d\n",$1,$2,$3,$4,$5,$6);
	math_all+=$3
	eng_all+=$4
	com_all+=$5
	total_all+=$6
	}
else 
	{printf("%8s %8s %8s %8s %8s %8s\n",$1,$2,$3,$4,$5,$6);}

}

END{
print "----------------------------------------------"
nb=NF-1
printf("MOYEN:\n");
printf("math=%5.2f\neng=%5.2f\ncomputer=%5.2f\ntotal=%5.2f\n",math_all/nb,eng_all/nb,com_all/nb,total_all/nb);
}
