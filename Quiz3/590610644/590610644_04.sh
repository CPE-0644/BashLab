#!/bin/bash

if (($# == 0));
    then
    echo "Where is your inputfile?"
else 
    declare -a prices amounts names
    names=(`sort -k1 $1 | cut -d ',' -f1 | tr a-z A-Z`)
    prices=(`sort -k1 $1 | cut -d ',' -f2`)
    amounts=(`sort -k1 $1 | cut -d ',' -f3`)
    all_amounts=0
    for am in `sort -k1 $1 | cut -d ',' -f3`;
    do
        ((all_amounts+=$am))
    done
    i=0
    j=1
    all_prices=0
    for row in `more $1 `;
    do
        echo "$j) ${names[$i]}(${amounts[$i]}) : $((${prices[$i]}*${amounts[$i]}))"
        ((all_prices+=`expr ${prices[$i]}*${amounts[$i]}`))
        ((i++))
        ((j++))
    done

    echo "   Total($all_amounts) : $all_prices"
fi