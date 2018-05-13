#!/bin/bash
    
echo "Write your teacher: "
read name
    
if [ "$name" = "Narathip" -o "$name" = "Thanyarak" ]
then
    echo "You are class A"
elif [ "$name" = "Somchai" -o "$name" = "Somsri" -o "$name" = "Somyot" ]
then
    echo "You are class B"
elif [ "$name" = "Tukky" -o "$name" = "Tsubasa" ]
then
    echo "Your are Johnny Junior's fan"
else
    echo "Unavailable!"
fi
