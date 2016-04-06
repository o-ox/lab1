#!/bin/sh
RED='\033[1;31m'
NC='\033[0m'
GREENC=$(echo '\033[1;32m')
NCS=$(echo ${NC})

echo "$RED" Задание 1 "$NC"
awk -F" " -f awk1 ./data_f/*
echo "$RED" Задание 2 "$NC"
awk -F" " -f awk2 ./data_f/ЦУМ_10.10.2006
echo "$RED" Задание 3 "$NC"
awk -F" " -f awk3 ./data_f/ЦУМ_*
echo "$RED" Задание 4 "$NC"
awk -F" " -f awk4 ./data_f/*