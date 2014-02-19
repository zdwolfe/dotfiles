#!/bin/bash
DIR="$( cd "$( dirname "$0" )" && pwd )"
DATE=`date +%s`

for PACKAGE in `ls -1`
do

  if [ -f $PACKAGE/install.sh ]
  then
    echo "installing $PACKAGE"
    sh $PACKAGE/install.sh
  fi

done
