sudo apt-get -y update
curl -sSL https://get.docker.com/ | sh
sudo usermod -aG docker ubuntu
sudo apt-get install -y python-pip
sudo pip install docker-compose
cd /vagrant; sudo docker-compose run web npm install
