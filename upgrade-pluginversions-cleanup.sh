#!/bin/bash

# script to convert the xgapp files back to unix format and remove the .bak files

find . -name '*.gapp' -o -name '*.xgapp' | while read f
do
  echo converting back to unix format and removing any bak file
  dos2unix $f
  rm ${f}.bak
done
