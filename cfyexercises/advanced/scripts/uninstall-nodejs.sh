#! /bin/bash

rpm -q nodejs
if [ $? == 0 ]; then
    sudo npm uninstall forever -g
    sudo yum -y remove nodejs
    rpm -q nodejs
fi

