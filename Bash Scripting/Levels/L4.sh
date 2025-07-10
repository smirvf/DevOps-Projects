#!/bin/bash

# Level 4: File Manipulation
# Mission: Create a script that copies all .txt files from the Arena directory to a new directory called Backup.

backupArena() {
    filesPath='Arena/*.txt'
    backupPath='Backup/'
    for i in $filesPath; do
        mkdir - p $backupPath | cp $filesPath $backupPath
    done
}

backupArena