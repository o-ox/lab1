#!/bin/sh
RED='\033[1;31m'
NC='\033[0m'
GREENC=$(echo '\033[1;32m')
NCS=$(echo ${NC})

file="text.txt"
file_back="text_.txt"

cp $file_back $file

echo "$RED" Задание 1 "$NC"
echo Строки, начинающиеся с прямой речи
sed '/«/!d' $file
echo "$RED" Задание 2 "$NC"
echo Заменить все строки, в которых говориться про Машу на Маша
sed '/Маш./c\Маша.' $file
#sed 's/.*Маш..*/Маша./g' $file
echo
echo "$RED" Задание 3 "$NC"
echo Зашифровать текст
sed 'y/абвгдеёжзийклмнопрстуфхцчшщъыьэюяАБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ/яабвгдеёжзийклмнопрстуфхцчшщъыьэюЯАБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮ/' $file
echo
echo "$RED" Задание 4 "$NC"
sed '/!/ a\!!!' $file
echo