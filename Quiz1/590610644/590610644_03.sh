#!/bin/bash

for ((i=1;i<=10;i++)); do
	if ((i<10)); 
	then
		mv data${i}.txt myfile0${i}.dat
	else 
		mv data${i}.txt myfile${i}.dat
	fi
done

mkdir Data{1..10}

for ((i=1;i<=10;i++)); do
        if ((i<10));
        then
                mv myfile0${i}.dat Data${i}
        else
                mv myfile${i}.dat Data${i}
        fi
done

mkdir Program{1..10}

for ((i=1;i<=10;i++)); do
        if ((i<10));
        then
                mv mydata0${i}.dat Program${i}
        else
                mv mydata${i}.dat Program${i}
        fi
done
