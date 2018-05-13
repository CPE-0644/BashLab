#!/bin/bash

path=$1
folder=$2
if [ "$2" == "" ]; then
	fullpath=$(find . -name $path)
else 
	fullpath=$(find ./$2 -name $path)
fi

for line in $(more $fullpath); do
	echo $line
done
#echo $(more $fullpath)

#echo $fullpath
