#!/bin/bash
#By Tiago A. Fontenele
mkdir other 2>/dev/null
mv $(ls -p | grep -v / | grep -v "\.") other/ 2>/dev/null
mv $(ls -p | grep -v / | grep -e ".*\.$") other/ 2>/dev/null
mkdir -p $(ls -p | grep -v / | grep -o "[^.]*$" | tr [:upper:] [:lower:]) 2>/dev/null
num_files=$(ls -p | grep -v / | grep "\." >f0exc0xa0xe0x0x8a9 | cat f0exc0xa0xe0x0x8a9 | wc -l)
i=0
while read LIN; do
      ((i = i + 1))
      echo " Moveing $i of $num_files files"
      mv "$LIN" "$(echo "$LIN" | grep -v / | grep "\." | grep -o "[^.]*$" | tr [:upper:] [:lower:])/" 2>/dev/null
      clear
done <f0exc0xa0xe0x0x8a9
rm f0exc0xa0xe0x0x8a9
cp sh/secretary.sh secretary.sh 2>/dev/null
echo " Process finished!"
echo " $i files were organized into folders."
sleep 5
exit
