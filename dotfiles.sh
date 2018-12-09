#!/bin/bash

## file exist check
function makeDotConfs () {
	fn=".$1"
    if [ -e $fn ]; then
        echo "$1 Skipped."
    else
        echo "$1 Created."
        ln -s ~/.dotfiles/$1 ~/.$1
    fi
}


makeDotConfs vimrc
makeDotConfs screenrc
makeDotConfs screen
makeDotConfs bashrc
makeDotConfs gitconfig
makeDotConfs gitignore_global
makeDotConfs tmux.conf
