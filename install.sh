#!/bin/bash
#
# backup old dotfiles (if exists) and copy new dotfiles
#

cd ~

DOTFILES=(".vimrc")

for dotfile in $DOTFILES; do
	if test -f ~/$dotfile ; then
   	    echo "old $dotfile exist. backup it now ..."
   	    mv ~/$dotfile ~/$dotfile.bak
        wget https://raw.githubusercontent.com/tu-nv/dotfiles/master/$dotfile -O ~/$dotfile
	fi
done

