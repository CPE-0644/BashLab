#!/bin/bash
    
echo "Put your score: "
read num
    
if [ "$num" -ge 0 -a "$num" -lt 7 ]
then
    echo "You have to Phayayamm much more!"
elif [ "$num" -ge 7 -a "$num" -lt 15 ]
then
    echo "Thammada!"
elif [ "$num" -ge 15 -a "$num" -le 20 ]
then
    echo "Great!"
else
    echo "Your score must be 0-20."
fi
