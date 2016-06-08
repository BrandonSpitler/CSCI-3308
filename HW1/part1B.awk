#!/bin/bash
awk '{
sort ="sort -k3 -k4 -k2";
for(i=4;i<=NF;i++)j+=$i;
print int(j/(NF-3)) " [" $1 "] " $3 ", " $2 | sort;
j=0;
}' $1
