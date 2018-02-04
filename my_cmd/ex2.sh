#! /bin/bash

tarif=$(grep $1 ex2.tarif | cut -d "=" -f2 ) 

echo "input tarif"
read tarif

echo "Le prix du baril de brut se situe autour de $tarif$ US"
