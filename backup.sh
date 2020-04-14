#! /usr/bin/env bash

# Add or remove the folders from the list as per your need
folders=(
    "brew"
    "defaults"
    "iterm2"
    "notes"
    "stickies"
    "zsh"
    "dotfiles"
)

for folder in "${folders[@]}" 
do  
    echo "Backup $folder"
    pushd $folder
        ./backup.sh
    popd    
done