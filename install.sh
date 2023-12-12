##!/bin/bash
##!/bin/ksh

# Must run where those files exist
if [ -e ".bash_aliases" -a \
  -e ".gitconfig" ]; then

# Remove previously installed symbolic links
if [ -L "$HOME/.bash_aliases" ]; then
  rm -f $HOME/.bash_aliases
fi
if [ -L "$HOME/.gitconfig" ]; then
  rm -f $HOME/.gitconfig
fi

# Create new symbolic links to the *.vimrc files
ln -s `pwd`/.bash_aliases  $HOME/.bash_aliases
ln -s `pwd`/.gitconfig  $HOME/.gitconfig

echo "=============================================="
echo "You must make sure $HOME/.bin is in your PATH env."
echo "=============================================="
echo

fi
