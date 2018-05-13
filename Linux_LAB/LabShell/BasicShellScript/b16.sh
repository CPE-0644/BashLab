#!/bin/bash
    
i=1
while [ "$i" -le 100 ]
do
   if [ "$i" -lt 10 ]
   then
          num=00${i}
    elif [ "$i" -lt 100 ]
    then
          num=0${i}
    else
          num=${i}
    fi
          
    mv  temp${i}.txt temp${num}.txt 
    i=`expr $i + 1`
done
