#!/bin/bash
#
for i in `cat user.txt`
do
   sed 's/'^M'//g' > "new.java"
done



