#!/bin/bash

# Must run where those files exist
if [ -e ".bash_aliases" ]; then

# Remove previously installed .bash_aliases file
if [ -e "$HOME/.bash_aliases" ]; then
  rm -f $HOME/.bash_aliases
fi

# Remove previously installed symbolic links
if [ -L "$HOME/.bash_aliases" ]; then
  rm -f $HOME/.bash_aliases
fi

# Create new symbolic links to the .vimrc files checked-out
ln -s -T `pwd`/.bash_aliases $HOME/.bash_aliases

# Done!!
echo
echo ====================================
echo Install .bash_aliases has been done!
echo ====================================
echo

fi
