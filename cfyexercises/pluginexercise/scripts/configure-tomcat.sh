#! /bin/bash

sudo yum install -y unzip wget
sudo sed -i 's/Connector port="8080"/Connector port="8080" address="127.0.0.1"/g' /etc/tomcat/server.xml
cd /tmp
wget http://www.michael-thomas.com/tech/apache/tomcat/tutorial_firststeps_tomcat/mytomcat-helloworld-war.zip
unzip mytomcat-helloworld-war.zip
sudo cp mytomcat-helloworld.war /usr/share/tomcat/webapps/
sudo service tomcat restart
