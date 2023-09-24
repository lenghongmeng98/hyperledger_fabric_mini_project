sudo rm -R ./crypto-config
sudo rm -R ./genesis.block
sudo rm -R ./mychannel.tx
sudo rm -R ./Org1MSPanchors.tx
sudo rm -R ./Org2MSPanchors.tx
sudo docker rm -f $(docker ps -aq)
sudo docker volume prune

