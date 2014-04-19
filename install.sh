#!/bin/bash
MODULES=`grep path .gitmodules | sed 's/.*= //'`
git submodule init

for MODULE in $MODULES
do
  if [ -f $MODULE/install.sh ]
  then
    echo "installing $MODULE"
    sh $MODULE/install.sh
  fi
done
