#!/bin/bash
DIR="$( cd "$( dirname "$0" )" && pwd )"
DATE=`date +%s`

if [ -f ~/.gitconfig ]
then
  mv -v ~/.gitconfig ~/.gitconfig.$DATE
fi
ln -sfv $DIR/gitconfig ~/.gitconfig

echo "git config installed"
