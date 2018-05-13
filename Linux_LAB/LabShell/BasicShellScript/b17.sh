#!/bin/bash
   
while [ "$1" != "" ]
do
    name=`echo $1 | cut -f1 -d'.'`
    echo $1, $name
    shift
done
