#!/bin/sh
RED='\033[1;31m'
NC='\033[0m'
GREENC=$(echo '\033[1;32m')
NCS=$(echo ${NC})

file="text.txt"
echo "$RED" Задание 1 "$NC"
echo Количество вопр. предложений: $(grep -c ? $file)
echo Количество восклиц. предложений: $(grep -c ! $file)
echo "$RED" Задание 2 "$NC"
echo Предложения, начинающиеся с прямой речи:
grep '^«' $file
echo "$RED" Задание 3 "$NC"
grep '' $file | sort | grep -n '' | sed "s/^/$GREENC/g; s/:/ $NCS/g"
echo "$RED" Задание 4 "$NC"
echo Количество предложений, в которых говорится про Машу: $(grep -c 'Маш.' $file)