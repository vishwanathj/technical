#! /bin/bash

rpm -q tomcat
if [ $? != 0 ]; then
    sudo yum -y install tomcat tomcat-admin-webapps.noarch tomcat-docs-webapp.noarch tomcat-javadoc.noarch tomcat-systemv.noarch tomcat-webapps.noarch
fi
