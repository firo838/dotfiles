#!/bin/bash

## file exist check
function ch () {
	fn=".$1"
    if [ -e $fn ]; then
        echo "$1 Skipped."
    else
        echo "$1 Created."
        ln -s ~/.dotfiles/$1 ~/.$1
    fi
}

#ln -s ~/.dotfiles/zprofile ~/.zprofile
#ln -s ~/.dotfiles/vimrc ~/.vimrc
#ln -s ~/.dotfiles/screenrc ~/.screenrc
#ln -s ~/.dotfiles/screen ~/.screen
#ln -s ~/.dotfiles/bashrc ~/.bashrc
#ln -s ~/.dotfiles/gitconfig ~/.gitconfig
#ln -s ~/.dotfiles/gitignore_global ~/.gitignore_global
#ln -s ~/.dotfiles/muttrc ~/.muttrc
#ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf

ch zprofile
ch vimrc
ch screenrc
ch screen
ch bashrc
ch gitconfig
ch gitignore_global
ch muttrc
ch tmux.conf
ch w3m
