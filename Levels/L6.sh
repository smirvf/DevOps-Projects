#!/bin/bash

# Level 6: Argument Parsing
# Mission: Write a script that accepts a filename as an argument and prints the number of lines in that file. 
# If no filename is provided, display a message saying 'No file provided'.

dirTest='./Battlefield/test.txt'

inputTest() {
    filePath=$1
    if [[ $# = 0 ]]; then
        echo 'No file provided.'
    else
        while IFS= read -r line; 
        do echo "$line"
        done < $filePath
    fi
}

inputTest $dirTest