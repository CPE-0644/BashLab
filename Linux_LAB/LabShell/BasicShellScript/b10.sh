#!/bin/bash
    
if [ "$1" = "" ]
then
    echo "Write your teacher'name in command line."
elif [ "$1" = "Narathip" -o "$1" = "Thanyarak" ]
then
    echo "You are class A"
elif [ "$1" = "Somchai" -o "$1" = "Somsri" -o "$1" = "Somyot" ]
then
    echo "You are class B"
elif [ "$1" = "Tukky" -o "$1" = "Tsubasa" ]
then
    echo "Your are Johnny Junior's fan"
else
    echo "Unavailable!"
fi
