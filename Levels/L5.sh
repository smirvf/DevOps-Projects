#!/bin/bash

# Level 5: The Boss Battle - Combining Basics
# Mission: Combine what you've learned! Write a script that:
# 1. Creates a directory names 'Battlefield'
# 2. Inside Battlefield, create files named knight.txt, sorcerer.txt, and rogue.txt.
# 3. Check if knight.txt exists; if it does, move it to a new directory called Archive.
# 4. List the contents of both Battlefield and Archive.

BossBattle() {
    dirBattle='./Battlefield/'
    fileNames=('knight' 'sorcerer' 'rogue')
    dirKnight=$dirBattle'/knight.txt'

    echo $
    for i in ${fileNames[@]}; do
        mkdir -p $dirBattle && touch $dirBattle/$i.txt
    done
    if [[ -f $dirKnight ]]; then
        mkdir -p './Archive/' && mv $dirKnight './Archive/'
    fi
    echo "Contents of Battlefield" && ls $dirBattle
    echo -e "\n Contents of Archive" && ls './Archive/'
}

BossBattle