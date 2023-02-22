FROM eclipse-temurin:18-jdk-alpine

RUN wget https://dlcdn.apache.org/maven/maven-3/3.8.7/binaries/apache-maven-3.8.7-bin.zip && unzip apache-maven-3.8.7-bin.zip -d /usr/local/

ENV MAVEN_HOME=/usr/local/apache-maven-3.8.7
ENV PATH=$PATH:$MAVEN_HOME/bin
