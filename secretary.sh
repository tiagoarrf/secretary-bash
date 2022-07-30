#!/bin/bash
#By Tiago A. Fontenele
mkdir other 2> /dev/null
mv `ls -p | grep -v / | grep  -v "\."` other/ 2> /dev/null
mv `ls -p | grep -v / | grep -e ".*\.$"` other/ 2> /dev/null
mkdir -p `ls -p | grep -v / | grep -o  "[^.]*$" | tr [:upper:] [:lower:]` 2> /dev/null
ls -p | grep -v / | grep  "\." > tempirj0f49j49r
while read LIN
   do
      mv "$LIN" "$(echo "$LIN" | grep -v / | grep "\." | grep -o  "[^.]*$" | tr [:upper:] [:lower:])/" 2> /dev/null
done < tempirj0f49j49r
rm tempirj0f49j49r
mv sh/secretary.sh secretary.sh 2> /dev/null
echo Finished.
