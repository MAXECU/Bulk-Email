#!/bin/bash
filename="$1"

while read -r line; do
    name="$line"
    neomutt -s "Resume  - Manoj Patel" $line  < ~/filecontent.txt -a ~/Resume_Manoj.pdf
    echo "Email to send $line is done"

done < "$filename"
