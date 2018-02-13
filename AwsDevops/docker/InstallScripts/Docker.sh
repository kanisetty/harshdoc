#!/bin/bash -xe
#This scricpt installs Docker Engine and git on Amazon Linux Machine 
#and clones sample DockerFile Developed  for varies tools
#here it will clone mysql Dockerfile and create image

yum install docker -y
service docker start
yum install git -y
cd ~
git clone https://github.com/CentOS/CentOS-Dockerfiles
cd  CentOS-Dockerfiles
cd mysql
cd centos6
docker build -t mysql .
yum install epel-release && sudo yum install -y python-pip
pip install docker-compose 
yum upgrade python* -y
service docker restart
