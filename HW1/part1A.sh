#!/bin/bash
numberOfLines=`wc -l $1 | cut -d " " -f 1`

numberOfScores=`wc -w $1 |cut -d " " -f 1`
((numberOfScoresPerPerson=(numberOfScores - (3 * numberOfLines)) / numberOfLines))
((x= numberOfScoresPerPerson + 3))
scoreCount=0
AverageScore=0
firstName="Brandon"
lastName="Spitler"
studentNumber=9999999
for line in `cat $1`;
do	
	if [ $scoreCount -le 2 ]
	then

		if [ $scoreCount -eq 0 ]
		then
			studentNumber="$line"
		elif [ $scoreCount -eq 1 ]
		then
			firstName="$(echo -e "${line}" | tr -d '[[:space:]]')"
		else
			lastName="$(echo -e "${line}" | tr -d '[[:space:]]')"
		fi
				 
		((scoreCount++))
	elif [ $scoreCount -lt $x ]
	then
		((scoreCount++))
		((AverageScore=AverageScore + (line / numberOfScoresPerPerson)))
	else
		echo $AverageScore" ["$studen| sort -t $" " -k 3,4 > testFile.txttNumber"] "$lastName", "$firstName 
		AverageScore=0
		scoreCount=1
		studentNumber=$line
	fi		
done | sort -t $" " -k 3,4 > testFile.txt

