# написать скрипт, который удаляет из текстового
# файла пустые строки и заменяет маленькие символы
# на большие (воспользуйтесь tr или sed)

#!/bin/bash

clear

read -ep "Enter filename >"

if [[ -e $REPLY ]]; then
	#deleted empty string & lowerize all letters
	sed  '/^$/d' $REPLY | tr "[A-Z]" "[a-z]" > file2
else
	echo "file not found"
	exit 1
fi

echo "
**********
first file
**********"
cat $REPLY

echo "
***********
second file
***********"
cat file2

#another method
#for file in *txt
#do
#	tr -d "\r" | sed 's/[:lover:]/[:upper:]/g' > tempfile
#	mv tempfile $file
#done
