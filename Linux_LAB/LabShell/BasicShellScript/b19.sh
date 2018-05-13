#!/bin/bash
    
while [ "$1" != "" ]
do
    name=`echo $1 | cut -f1 -d'.'`
    fname=${name}_e.html
    cat $1 > $fname
    mv $fname public_html
    chmod 777 public_html/$fname
    shift
done
