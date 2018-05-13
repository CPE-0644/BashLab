#!/bin/bash

sum=0

for line in $(sort -k1 $1 | cut -f4 | head -n-1)
do
	sum=$((($sum+$line)))	
done

echo "NO.	Name	Score"

sort -k1 $1 | cut -f3 --complement | head -n-1 | tail -n+2

echo "Average score: $(($sum/$(($(more $1 | wc -l)-2))))"
