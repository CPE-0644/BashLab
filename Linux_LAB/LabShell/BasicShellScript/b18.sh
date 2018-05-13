#!/bin/bash
    
while [ "$1" != "" ]
do
    name=`echo $1 | cut -f1 -d'.'`
    fname=${name}_e.html
    echo $1, $fname
    shift
done
