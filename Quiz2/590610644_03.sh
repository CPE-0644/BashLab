#!/bin/bash

j=0

sd=$(for file in *.dat; do ((j++)); grep -e '\<[0-9][0-9][0-9][0-9][0-9]' $file; done | sort -k3 -r)

i=0
A=0
B=0
C=0
D=0
F=0


for word in $sd; do
 	((i++))
	if ((i%3==0)); then
                if (($word >= 80)); then
                        ((A++))
			grade='A'
                elif (($word>=70)); then
                       ((B++))
			grade='B'
                elif (($word>=60)); then
                       ((C++))
			 grade='C'
                elif (($word>=50)); then
                        ((D++))
			grade='D'
                else
			((F++))
                        grade='F'
                fi
	echo " $grade"
	else
		echo -n "$word "
	fi
done


echo "------------"
echo "A: $A"
echo "B: $B"
echo "C: $C"
echo "D: $D"
echo "F: $F"

