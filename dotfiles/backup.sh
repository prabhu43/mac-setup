#! /usr/bin/env bash

# Add or remove the files from the list as per your need
files=(
    ".bash_history"
    ".bashrc"
    ".config"
    ".fzf.bash"
    ".fzf.zsh"
    ".git"
    ".gitconfig"
    ".helm"
    ".iterm2"
    ".kube"
    ".oh-my-zsh"
    ".shell.pre-oh-my-zsh"
    ".ssh"
    ".tmux"
    ".vscode"
    ".zsh*"
)

for file in "${files[@]}" 
do  
    echo "Copying ~/$file"
    cp -r ~/$file .
done