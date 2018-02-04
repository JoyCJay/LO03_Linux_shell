#!/bin/awk -f
{
 for ( nb_f=NF ; nb_f>=1 ; nb_f--){
	printf ("%s-",$nb_f)
	}
 printf("\n");
}
