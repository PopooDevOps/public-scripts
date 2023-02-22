#!/bin/bash

systemctl enable docker
systemctl start docker

mkdir -p /root/eclipse-temurin-with-maven

cat <<EOF > /root/eclipse-temurin-with-maven/Dockerfile
FROM eclipse-temurin:18-jdk-alpine

RUN wget https://dlcdn.apache.org/maven/maven-3/3.8.7/binaries/apache-maven-3.8.7-bin.zip && unzip apache-maven-3.8.7-bin.zip -d /usr/local/

ENV MAVEN_HOME=/usr/local/apache-maven-3.8.7
ENV PATH=$PATH:$MAVEN_HOME/bin
EOF

cd /root/eclipse-temurin-with-maven
docker build -t eclipse-temurin:18-jdk-alpine-maven-3.8 --network host .
