#!/bin/bash

echo "Put the number: "
read num
    
if [ "$num" -lt 100 ]
then
    echo "$num is less than 100"
elif [ "$num" -lt 1000 ]
then
    echo "$num is less than 1000 and more than 100"
else
    echo "$num is more than 1000"
fi
