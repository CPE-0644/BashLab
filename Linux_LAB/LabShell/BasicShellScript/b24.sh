#!/bin/bash

for file in $(ls tmp*.txt)
do
    echo "*** ${file} ***"
done
