#!/bin/bash
    
num=$RANDOM
    
echo "Put your favorite number: "
    
while true
do
    echo "Put --> 0-32767"
    read x
    if [ $x -gt $num ]
    then
        echo "less than your number!"
    elif [ $x -lt $num ]
    then
        echo "more than your number"
    else
        echo "OK!"
        break
    fi
done
