#!/bin/bash

sum=0

for line in $(cut -d ',' -f2 $1)
do
	sum=$((($sum+$line)))	
done

echo "Total: $sum baht"
