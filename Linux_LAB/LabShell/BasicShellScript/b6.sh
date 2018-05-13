#!/bin/bash

hour=`date +%H`

if [ "$hour" -lt 12 ]
then
    echo "AM:"
else
    echo "PM:"
fi

# =
# !=
# -eq
# -ne
# -gt
# -ge
# -lt
# -le