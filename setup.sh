#!/bin/bash

//This is my setup script jh699
sudo apt update -y
sudo apt upgrade -y 
sudo apt install -y \ 
  net-tools \
  unzip \ 
  ssh \ 
  nano \
  rabbitmq-server \
  git\ 

sudo systemctl enable rabbitmq-server
sudo systemctl start rabbitmq-server

sudo rabbitmqctl add_user it490 it490pass 
sudo rabbitmqctl set_user_tags it490 administrator
sudo rabbitmqctl set_permissions -p / it490 ".*" ".*" ".*"

curl -fsSL https://tailscale.com/install.sh | sh

wget https"//github.com/MattToegel/IT490/archive/refs/heads/main.zip
