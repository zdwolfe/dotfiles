#!/bin/bash
DIR="$( cd "$( dirname "$0" )" && pwd )"
DATE=`date +%s`

if [ -f ~/.ackrc ]
then
  mv -v ~/.ackrc ~/.ackrc.$DATE
fi
ln -sfv $DIR/ackrc ~/.ackrc

echo "ack config installed"
