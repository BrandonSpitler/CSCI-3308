#!/bin/bash
awk '{for(i=4;i<=NF;i++)j+=$i; print int(j/(NF-3)) " [" $1 "] " $3 ", " $2;j=0}' $1 | sort -t $" " -k 3,4

