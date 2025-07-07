#!/bin/bash

# Level 10: Boss Battle 2 - Intermediate Scripting
# Mission: Write a script that:
# 1. Creates a directory called Arena_Boss.
# 2. Creates 5 text files inside the directory, named file1.txt to file5.txt.
# 3. Generates a random number of lines (between 10 and 20) in each file.
# 4. Sorts these files by their size and displays the list.
# 5. Checks if any of the files contain the word 'Victory', and if found, 
#    moves the file to a directory called Victory_Archive.

dirTest='./Arena_Boss'

medBoss() {
    mkdir -p $dirTest
    for i in $(seq 1 5 ); do
        tempVar='file'$i.txt
        touch $dirTest/$tempVar

        linesNo=$(( RANDOM % 11 + 10 ))
        for ((i=1; i<=linesNo; i++)); do
            echo "File $i" >> $dirTest/$tempVar
        done
    done
    ls -Sr $dirTest/*.txt
    grep -l 'Victory' $dirTest/*.txt | while IFS= read -r fileName; do
        mkdir -p './Victory_Archive'
        mv $fileName './Victory_Archive'
        echo 'Victory found!'
    done
}
medBoss