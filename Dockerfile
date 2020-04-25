FROM adoptopenjdk/openjdk11:alpine-jre
VOLUME /tmp
EXPOSE 8010
ADD ./target/services-bankaforo255-seguridad-0.0.1-SNAPSHOT.jar bankaforo255-service-seguridad.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=prod","-Dspring.cloud.config.uri=http://34.225.90.234:8888","-jar","/bankaforo255-service-seguridad.jar"]