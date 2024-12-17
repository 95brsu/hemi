echo "Введите номер ноды?"
read num_p

echo "Установка ноды HEMI... $num_p .......1/2"
mkdir -p hemi-keys
mkdir Hemi-Node$num_p && cd Hemi-Node$num_p
wget https://github.com/hemilabs/heminetwork/releases/download/v0.8.0/heminetwork_v0.8.0_linux_amd64.tar.gz
tar -zxvf heminetwork_v0.8.0_linux_amd64.tar.gz
rm heminetwork_v0.8.0_linux_amd64.tar.gz
cd heminetwork_v0.8.0_linux_amd64/
chmod +x ./popmd
./keygen -secp256k1 -json -net="testnet" > ~/hemi-keys/popm-address$num_p.json
cat ~/hemi-keys/popm-address$num_p.json

eval $(jq -r '. | "ETHEREUM_ADDRESS$num_p=\(.ethereum_address)\nNETWORK=\(.network)\nPRIVATE_KEY$num_p=\(.private_key)\nPUBLIC_KEY$num_p=\(.public_key)\nPUBKEY_HASH$num_p=\(.pubkey_hash)"' ~/hemi-keys/popm-address$num_p.json)

echo "Ethereum Address: $ETHEREUM_ADDRESS$num_p"
echo "Network: $NETWORK"
echo "Private Key: $PRIVATE_KEY$num_p"
echo "Public Key: $PUBLIC_KEY$num_p"
echo "Public Key Hash: $PUBKEY_HASH$num_p"

export POPM_BTC_PRIVKEY=$PRIVATE_KEY$num_p
export POPM_STATIC_FEE=6050
export POPM_BFG_URL=wss://testnet.rpc.hemi.network/v1/ws/public
