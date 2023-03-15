FROM eclipse-temurin:18-jdk-alpine

RUN wget https://dlcdn.apache.org/maven/maven-3/3.8.8/binaries/apache-maven-3.8.8-bin.zip && unzip apache-maven-3.8.8-bin.zip -d /usr/local/

ENV MAVEN_HOME=/usr/local/apache-maven-3.8.8
ENV PATH=$PATH:$MAVEN_HOME/bin
