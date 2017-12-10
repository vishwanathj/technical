#! /bin/bash

rpm -q tomcat
if [ $? == 0 ]; then
    sudo yum -y remove tomcat tomcat-admin-webapps.noarch tomcat-docs-webapp.noarch tomcat-javadoc.noarch tomcat-systemv.noarch tomcat-webapps.noarch unzip wget
    rm /tmp/mytomcat-helloworld-war*
    rpm -q tomcat
fi

