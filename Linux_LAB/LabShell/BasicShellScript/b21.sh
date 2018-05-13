#!/bin/bash

i=1
while [ "$i" -le 100 ]
do
    echo "***** ${i} *****"
    if [ ! -e temp${i}.txt ]
    then
        touch tmp${i}.txt
    fi
    i=`expr $i + 5`
done
