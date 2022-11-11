#!/bin/bash
echo -e "\033[0;35m"
echo "  _     ___  ____ ____  _   _  ___  ____  _____ ";
echo " | |   / _ \/ ___/ ___|| \ | |/ _ \|  _ \| ____|";
echo " | |  | | | \___ \___ \|  \| | | | | | | |  _|  ";
echo " | |__| |_| |___) |__) | |\  | |_| | |_| | |___ ";
echo " |_____\___/|____/____/|_| \_|\___/|____/|_____|";
echo -e "\e[0m"

sleep 3

if [ ! $METAMASKWALLET ]; then
	read -p "Testnetler icin kullandiginiz cuzdan adresinizi girin: " METAMASKWALLET
	echo 'export METAMASKWALLET='$METAMASKWALLET >> $HOME/.bash_profile
fi

echo -e "\e[1m\e[32m1. Sunucu guncellemesi yapiliyor.. \e[0m"
echo "======================================================"
sleep 1
sudo apt update && sudo apt upgrade -y

echo -e "\e[1m\e[32m2. Docker kuruluyor, diger gerekli kurulumlar yapiliyor.. \e[0m"
echo "======================================================"
sleep 1
sudo apt install docker.io -y
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
sudo apt install screen -y



echo -e "\e[1m\e[32m3. Binary dosyalari yukleniyor.. \e[0m"
echo "======================================================"
sleep 1

git clone https://github.com/exorde-labs/ExordeModuleCLI.git

cd ExordeModuleCLI

docker build -t exorde-cli .


echo -e "\e[1m\e[32m3. Screen aciliyor.. \e[0m"
echo "======================================================"
sleep 1

screen -S Exorde
