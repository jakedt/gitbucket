FROM lopter/raring-base 
MAINTAINER Jacob Moshenko "jake@devtable.com"

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install -y openjdk-7-jre

ADD https://github.com/takezoe/gitbucket/releases/download/1.6/gitbucket.war gitbucket.war

EXPOSE 8080

ENTRYPOINT java -jar gitbucket.war
