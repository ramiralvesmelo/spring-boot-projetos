#/bin/bash

sudo apt update
sudo apt upgrade -y
sudo apt-get install  curl apt-transport-https ca-certificates software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update -y
apt-cache policy docker-ce
sudo apt install git docker-ce -y
sudo curl -L https://github.com/docker/compose/releases/download/1.29.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo apt install mysql-client -y


sudo  docker login ghcr.io -u ramiralvesmelo -p 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
sudo docker compose -f /vagrant/microservico/docker-compose.yml up 