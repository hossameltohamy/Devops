#!/bin/bash
# this script is only tested on ubuntu 

# install curl 
sudo apt install curl

echo "Curl Installed"

# Install Docker in os 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get update
apt-get install docker-ce docker-ce-cli containerd.io
systemctl enable docker
systemctl start docker
usermod -aG docker ubuntu

echo "Docker Engine Installed"

#intall Docker-compose 
 sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
echo "Docker Compose Installed"


# install jenkins 
   # install java 
   sudo apt install openjdk-11-jdk
   java -version
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install jenkins
#sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 9B7D32F2D50582E6
systemctl status jenkins
sudo ufw allow 8080
sudo ufw allow OpenSSH
sudo ufw enable
echo "jenkins Installed"

# install nodejs 
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

sudo apt install nodejs
node -v
echo "node Installed"


