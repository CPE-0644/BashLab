#!/bin/bash
    
i=1
while [ "$i" -le 100 ]
do
    touch temp${i}.txt
    i=`expr $i + 1`
done
