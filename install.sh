#!/bin/bash
#
# backup old dotfiles (if exists) and copy new dotfiles
#

cd ~

for dotfile in ".vimrc" ".tmux.conf"; do
	if test -f ~/$dotfile ; then
   	    echo "old $dotfile exist. backup it now ..."
   	    mv ~/$dotfile ~/$dotfile.bak
    fi
    wget https://raw.githubusercontent.com/tu-nv/dotfiles/master/$dotfile -O ~/$dotfile
done

