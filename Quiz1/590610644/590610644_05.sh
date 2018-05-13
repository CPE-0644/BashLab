#!/bin/bash

for file in *.dat; do
	tar cvfz ${file}.gz $file
done

folder=backup$(date +%y)$(date +%m)$(date +%d)
mkdir $folder

for file in *.dat.gz; do
	mv $file $folder
done 	
