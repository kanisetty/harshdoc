#!/bin/bash
#This Script Downloads and install Build Agent 
yum install wget -y
cd /root
wget http://10.96.8.74:8111/update/buildAgent.zip
unzip buildAgent.zip -d buildAgent
mv buildAgent /opt
cd /opt/buildAgent/conf
cp buildAgent.dist.properties buildAgent.properties
sed -i -e 's/serverUrl\=http\:\/\/localhost\:8111/serverUrl\=http\:\/\/10.96.8.74\:8111/g' /opt/buildAgent/conf/buildAgent.properties
cd /opt/buildAgent/bin
chmod +x agent.sh
sh agent.sh start
