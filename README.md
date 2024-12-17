# Hemi Network Node
## install hemi network node

### 1. Копировать и ввести в консоль
```shell
curl -s https://raw.githubusercontent.com/95brsu/hemi/refs/heads/main/install.sh > install.sh && chmod +x install.sh && ./install.sh
```
### 2. Копировать, поменять № на ваш номер и ввести в консоль
```shell
eval $(jq -r '. | "ETHEREUM_ADDRESS№=\(.ethereum_address)\nNETWORK=\(.network)\nPRIVATE_KEY№=\(.private_key)\nPUBLIC_KEY№=\(.public_key)\nPUBKEY_HASH№=\(.pubkey_hash)"' ~/hemi-keys/popm-address№.json)
```
### 3. Копировать, поменять № на ваш номер и ввести в консоль
```shell
echo "Ethereum Address: $ETHEREUM_ADDRESS№"
echo "Network: $NETWORK"
echo "Private Key: $PRIVATE_KEY№"
echo "Public Key: $PUBLIC_KEY№"
echo "Public Key Hash: $PUBKEY_HASH№"

export POPM_BTC_PRIVKEY=$PRIVATE_KEY№
export POPM_STATIC_FEE=6050
export POPM_BFG_URL=wss://testnet.rpc.hemi.network/v1/ws/public
```
### 4. Запрашиваем тестовые токены tBTC3 на адрес Public Key Hash
### 5. Создаем скрин сессию (№ меняем на свой)
```shell
screen -S Hemi№
```   
### 6. Копировать, поменять № на ваш номер и ввести в консоль  
```shell
eval $(jq -r '. | "ETHEREUM_ADDRESS№=\(.ethereum_address)\nNETWORK=\(.network)\nPRIVATE_KEY№=\(.private_key)\nPUBLIC_KEY№=\(.public_key)\nPUBKEY_HASH№=\(.pubkey_hash)"' ~/hemi-keys/popm-address№.json)
```
### 7. Копировать и ввести в консоль
```shell
./popmd
```
