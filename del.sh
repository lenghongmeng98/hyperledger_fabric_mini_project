# sudo rm -R ./artifacts/channel/crypto-config
# sudo rm -R ./artifacts/channel/genesis.block
# sudo rm -R ./artifacts/channel/mychannel.tx
# sudo rm -R ./artifacts/channel/Org1MSPanchors.tx
# sudo rm -R ./artifacts/channel/Org2MSPanchors.tx
sudo rm -rf ./artifacts/ledgers/
docker rm -f $(docker ps -aq)
docker volume prune

