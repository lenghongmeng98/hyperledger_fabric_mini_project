
chmod -R 0755 ./crypto-config

# Delete existing artifacts
rm -rf ./crypto-config
rm genesis.block mychannel.tx
rm -rf ../../channel-artifacts/*

#Generate Crypto artifactes for organizations
cryptogen generate --config=./crypto-config.yaml --output=./crypto-config/

SYS_CHANNEL="genesis"
CHANNEL_NAME="mychannel"

# Generate System Genesis block
configtxgen -profile TwoOrgsApplicationGenesis -configPath ${PWD}/config/ -channelID $SYS_CHANNEL -outputBlock ./genesis.block

# Generate channel configuration block
configtxgen -profile TwoOrgsApplicationGenesis -configPath ${PWD}/config/ -outputCreateChannelTx ./mychannel.tx -channelID $CHANNEL_NAME

configtxgen -profile TwoOrgsApplicationGenesis -configPath ${PWD}/config/ -outputAnchorPeersUpdate ./Org1MSPanchors.tx -channelID $CHANNEL_NAME -asOrg Org1MSP

configtxgen -profile TwoOrgsApplicationGenesis -configPath ${PWD}/config/ -outputAnchorPeersUpdate ./Org2MSPanchors.tx -channelID $CHANNEL_NAME -asOrg Org2MSP