#!/bin/bash
ROW=0

while IFS=, read -r col1 col2 #adapt to fit the number of columns
do
    echo "$col1"
    echo "$col2"

    OUTPUT="$col1 - $col2"

    echo $OUTPUT > ./$ROW.txt #creates a standard txt file with desired output
    let ROW++
done < input.csv #declare your csv file here
