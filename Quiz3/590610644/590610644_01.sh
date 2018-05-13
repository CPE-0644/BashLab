#!/bin/bash

a="Aaaaaaaaaa"
b="Bbbbbbbbbb"
for ((i=1;i<=100;i++));
do
    for ((j=1;j<=50;j++)); do
        if ((j%2==0));
        then
            echo $b >> data$i.txt
        else 
            echo $a >> data$i.txt
        fi
    done
done