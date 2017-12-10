#! /bin/bash

rpm -q nodejs
if [ $? != 0 ]; then
    sudo yum -y install epel-release
    sudo yum -y install nodejs
    sudo npm install forever -g
fi
