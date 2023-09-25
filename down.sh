
sudo rm -rf ./artifacts/ledgers/
sudo rm -rf ./channel-artifacts/*
docker rm -f $(docker ps -aq)


docker-compose -f ./artifacts/docker-compose.yaml down
docker volume prune
