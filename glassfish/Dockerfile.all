FROM ubuntu:16.04
MAINTAINER AKA RHP
RUN apt-get update \
 && apt-get install -y unzip wget openjdk-8-jdk \
 && wget download.java.net/glassfish/4.1.1/release/glassfish-4.1.1.zip \
 && unzip glassfish-4.1.1.zip -d /opt

RUN wget \
    https://github.com/eguahlak/choir-frontend/blob/master/target/choir-frontend-1.0-SNAPSHOT.war?raw=true \
    -O /opt/glassfish4/glassfish/domains/domain1/autodeploy/Choir.war

ENV PATH="/opt/glassfish4/glassfish/bin:$PATH"

EXPOSE 8080

CMD [ "asadmin", "start-domain", "-v" ]
