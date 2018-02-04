#!/bin/bash
function a {
echo "Saisir le repertoire"
read rep
ls -l $rep |grep "^d"
}

function b {
ls -l $1 | grep "^d"
}


a
#b $1
