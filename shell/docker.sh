#! /bin/bash 


function installDocker()
{

    docker -v > /dev/null
    if test $? -eq 0; then 
        return
    fi

    echo "install docker --->"
    sudo apt-get -y install \
      apt-transport-https \
      ca-certificates \
      curl

    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
       $(lsb_release -cs) \
       stable"
    sudo apt-get update
    sudo apt-get -y install docker-ce
    sudo groupadd docker
    sudo usermod -aG docker $USER
}
