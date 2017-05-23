#! /bin/bash

function packageInstall()
{
    if [ $# != 2 ]; then
        echo "bad param"
        exit 1
    fi
    dpkg -s $1 > /dev/null
    if [ $? -eq 0 ]; then
        return
    fi

    echo "start install " $1

    sudo dpkg -i $2
    echo "end install " $1
}




packageInstall code package/code_*_amd64.deb
packageInstall atom package/atom-amd64.deb
