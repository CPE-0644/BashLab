#!/bin/bash

string="123456789"

for ((i=1;i<=10;i++)) do
	for ((j=1;j<=i;j++)) do
		if ((i<10));
		then
			echo $string >> mydata0${i}.dat
		else
			echo $string >> mydata${i}.dat
		fi
	done
done
