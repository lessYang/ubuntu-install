#! /bin/bash

cd shell
bash apt-install.sh

for s in `ls`
do
    if test $s != "apt-install.sh";then
        bash $s
    fi
done

cd ..
