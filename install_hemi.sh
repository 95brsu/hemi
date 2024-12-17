#!/bin/bash

echo "Введите номер ноды?"
read num_p

echo "Установка ноды HEMI... $num_p "
mkdir -p hemi-keys
mkdir Hemi-Node$num_p && cd Hemi-Node$num_p
wget https://github.com/hemilabs/heminetwork/releases/download/v0.8.0/heminetwork_v0.8.0_linux_amd64.tar.gz
tar -zxvf heminetwork_v0.8.0_linux_amd64.tar.gz
rm heminetwork_v0.8.0_linux_amd64.tar.gz
cd heminetwork_v0.8.0_linux_amd64/
chmod +x ./popmd
./keygen -secp256k1 -json -net="testnet" > ~/hemi-keys/popm-address$num_p.json
cat ~/hemi-keys/popm-address$num_p.json

echo "Запросите тестовые токены tBTC3 на адрес "
echo "Продолжите установку следую инструкциям из README"
