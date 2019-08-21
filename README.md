# Postgres Database on remote server. Case is used on Ubuntu

## Install Docker:
[Get Docker CE for Ubuntu | Docker Documentation](https://docs.docker.com/install/linux/docker-ce/ubuntu/)

```
sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
   
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io

sudo groupadd docker

sudo gpasswd -a $USER docker

newgrp docker

docker run hello-world
```

## Install other needed modules

#### Docker Compose:

[From Docker docs](https://docs.docker.com/compose/install/)

```
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose
```

#### HumbleClI

```
git clone https://github.com/marcopeg/humble-cli.git /home/ubuntu/.humble-cli

sudo ln -s /home/ubuntu/.humble-cli/bin/humble.sh /usr/local/bin/humble
```

#### MakeCLI

```
sudo apt-get install make
```

#### Npm

```
sudo apt-get install npm
```

## Clone repo

```
git clone https://github.com/alialfredji/srv-redis.git
cd srv-redis
```

and create `.env.local` with custom passwords, see what is commented out in `.env`.

## Run and stop container

Providing 2 simple commands:
````
    make start

    make stop 
````