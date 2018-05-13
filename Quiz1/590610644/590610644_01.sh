#!/bin/bash

string1="12345678910"
string2="11121314151617181920"
string3="21222324252627282930"
for ((i=1;i<=10;i++)); do
	echo $string1 > data${i}.txt
	echo $string2 >> data${i}.txt
	echo $string3 >> data${i}.txt
done	
