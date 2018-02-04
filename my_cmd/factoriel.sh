#!/bin/bash
echo "Saisr le nombre"
read nom

function factoriel(){
fac_let=1
fac_expr=1
for ((n=$1;n>1;n--)) 
{
let fac_let=fac_let*n;
fac_expr=`expr $fac_expr \* $n` #Attention $n

}
echo "fac_expr=$fac_expr"
echo "fac_let=$fac_let"
}

factoriel nom
