#!/bin/bash

mkdir Data{01..10}
mkdir Data{11..100}

for ((i=1;i<=100;i++));
do
    if (($i<10)); then
        mv data$i.txt Data0$i/data0$i.txt
    else 
        mv data$i.txt Data$i/data$i.txt
    fi
done

mkdir myBackupProgram

for ((i=1;i<=100;i++));
do
    if (($i<10)); then
        mv mydata0$i.dat myBackupProgram/mydata0$i.txt
    else 
        mv mydata$i.dat myBackupProgram/mydata$i.txt
    fi
done