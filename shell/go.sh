#! /bin/bash


function installGo()
{
    if test -d /usr/local/go/ ; then

        return	
    fi

    echo "install golang ----> "

    sudo tar -C /usr/local -xzf ../package/go*.linux-amd64.tar.gz
    mkdir -p $HOME/go
    mkdir -p $HOME/go/src
    mkdir -p $HOME/go/bin
    mkdir -p $HOME/go/pkg

    echo 'PATH=$PATH:/usr/local/go/bin' >> $HOME/.bashrc
    echo 'GOROOT=/usr/local/go/' >> $HOME/.bashrc
}

installGo
