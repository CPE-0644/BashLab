#!/bin/bash

a="1357911131517192123252729"
b="24681012141618202224262830"
for ((i=1;i<=100;i++));
do
    for ((j=1;j<=i;j++)); do
        if ((i<10)); then
            if ((i%2==0));
            then
                echo $b >> mydata0$i.dat
            else 
                echo $a >> mydata0$i.dat
            fi
        else 
            if ((i%2==0));
            then
                echo $b >> mydata$i.dat
            else 
                echo $a >> mydata$i.dat
            fi
        fi
    done
done