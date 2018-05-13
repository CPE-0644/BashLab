#!/bin/bash

grade='A'
while true;
do
	echo -n "Your score = "
	read N;
	if ((N >= 80)); then
		grade='A'
	elif ((N>=70)); then
		grade='B'
	elif ((N>=60)); then
		grade='C'
	elif ((N>=50)); then
		grade='D'
	else
		grade='F'
	fi
	echo "Your grade: $grade";

done
