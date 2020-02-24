# Создать скрипт, который создаст директории для
# нескольких годов (2010-2017), в них - поддиректории
# для месяцев (от 01 до 12), и в каждый из них
# запишет несколько файлов с произвольными записями
# (например, 001.txt, содержащий текст "Файл 001 и т.д")

#!/bin/bash

if [ -e foto ]; then
	echo "Nothing to do!"
	exit 1
else

	mkdir foto 
	cd ./foto

	mkdir -p {2015..2020}/{01..12}
	for i in {2015..2020}
	do
		for j in {01..12}
		do
			echo "Hello i'm file $i$j" > foto$i$j.txt 
			mv foto$i$j.txt $i/$j
		done
	done
fi

# another method
# for i in {2010..2017}
# do
# 	for j in {01..12}
# 	do
# 		mkdir -p $i/$j
# 			for n in {001..020}
# 			do
# 				printf "$n" 1> $n.txt
#			done
# 	done
# done
