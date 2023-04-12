echo "started---------------"

# sudo docker rm -f $(sudo docker ps -aq)

# sudo docker rmi $(sudo docker images -q)

git pull

sudo docker-compose build

sudo docker-compose up -d


echo "ended---------------"
