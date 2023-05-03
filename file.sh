#!/bin/bash

sudo apt-get update 
sudo apt-get install docker.io
sudo apt-get install -y git
sudo curl -L https://github.com/docker/compose/releases/download/1.29.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo mkdir dockerfile
sudo cd dockerfile
sudo wget https://github.com/sarmaanish/sarmarepo/raw/master/Dockerfile
sudo chmod +x *
sudo docker build -t apache .
sudo docker run -dit --name apache-container -p "2000:80" apache
