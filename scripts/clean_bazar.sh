#!/bin/bash
CURRENT_DIRECTORY=`dirname $0`
BAZAR_DIRECTORY=$CURRENT_DIRECTORY/../bazar
CLEAN_DIRECTORY=$CURRENT_DIRECTORY/../bazar_clear

FILES=`find $BAZAR_DIRECTORY -type f`
for FILE in $FILES
do
    echo $FILE
done