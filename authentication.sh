# создать скрипт, который выводит сообщение при попытке
# неудачной аутентификации (/var/log/auth.log), 
# отслеживая сообщения с ошибками 'authentication failure'

#!/bin/bash

FILE=/var/log/auth.log
DATE=$(date '+%m%d')

FILE_INFO=$(grep 'authentication failure' $FILE)

echo "$FILE_INFO" > my_error_$DATE.log
echo "$FILE_INFO"

# another method
# LOG=/var/log/auth.log
# tail -0f "${LOG}" | while read i
# do
#	case $i in
#		"FAILED LOGIN")
#	zenity --info --text="Authentication failure" ;;
#	esac
# done


# and another method
# tail -1f /var/log/auth.log | grep "Failed"
