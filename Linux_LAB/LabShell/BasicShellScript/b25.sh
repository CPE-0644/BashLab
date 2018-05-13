#!/bin/bash

for file in `ls tmp*.txt`
do
    i=`echo $file | sed -e "s/tmp//" | sed -e "s/.txt//"`

    if [ "$i" -lt 10 ]
    then
        num=00${i}
    elif [ "$i" -lt 100 ]
    then
        num=0${i}
    else
        num=${i}
    fi

    mv  tmp${i}.txt tmp${num}.txt
done
