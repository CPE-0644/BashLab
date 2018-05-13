#!/bin/bash

i=0
grade='A'

echo "Grade207:"
while (($# != 0)); do
        for word in $(cat $1 | tail -n+2); do
                ((i++))
                if ((i%3==0 && i>=3)); then
                        if (($word >= 80)); then
                                grade='A'
                        elif (($word>=70)); then
                                grade='B'
                        elif (($word>=60)); then
                                grade='C'
                        elif (($word>=50)); then
                                grade='D'
                        else
                                grade='F'
                        fi
                echo " $grade"
                else echo -n "$word "
                fi
        done
        shift
done
