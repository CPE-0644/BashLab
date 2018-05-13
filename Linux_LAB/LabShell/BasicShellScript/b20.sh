#!/bin/bash
    
i=1
while [ "$i" -le 100 ]
do
    echo "***** ${i} *****"
    if [ -e temp0${i}.txt ]
    then
        echo "temp0${i}.txt already exists !"
    fi
    i=`expr $i + 1`
done
