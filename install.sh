#! /usr/bin/env bash

# Add or remove the folders from the list as per your need
folders=(
    "brew"
    "fzf"
    "git"
    "intellij"
    "iterm2"
    "notes"
    "python"
    "ruby"
    "rust"
    "stickies"
    "xcode"
    "zsh"
    "dotfiles"
)

for folder in "${folders[@]}" 
do  
    echo "Install $folder"
    pushd $folder
        ./install.sh
    popd    
done