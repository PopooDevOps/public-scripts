#!/bin/bash

systemctl enable docker
systemctl start docker

mkdir -p /root/eclipse-temurin-with-maven
cd /root/eclipse-temurin-with-maven
rm -f Dockerfile
wget http://git.popoo.foundation/devops/public-scripts/-/raw/main/jenkins-init/eclipse-temurin-with-maven/Dockerfile
docker build -t eclipse-temurin:18-jdk-alpine-maven-3.8 --network host .
