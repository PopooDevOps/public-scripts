#!/bin/sh

systemctl enable docker
systemctl start docker

mkdir -p /root/eclipse-temurin-with-maven
cd /root/eclipse-temurin-with-maven
rm -f Dockerfile
wget https://github.com/PopooDevOps/public-scripts/blob/main/jenkins-init/eclipse-temurin-with-maven/Dockerfile
docker build -t eclipse-temurin:18-jdk-alpine-maven-3.8 --network host .
