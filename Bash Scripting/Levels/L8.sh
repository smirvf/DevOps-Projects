#!/bin/bash

# Level 8: Multi-File Searcher
# Mission: Create a script that searches for a specific word or phrase across all .log files in a directory 
# And outputs the names of the files that contain the word or phrase.

dirTest='./Battlefield/'

printTest() {
    grep -l "$2" "$1"/*.log && echo "The files matching are listed above." || echo "No Matches"
}
printTest $dirTest 'test1'