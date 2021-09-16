FROM anapsix/alpine-java:latest
RUN mkdir /hello_server
COPY libs/HelloServer-1.0-SNAPSHOT.jar /hello_server
EXPOSE 9000
ENTRYPOINT ["java", "-jar", "/hello_server/HelloServer-1.0-SNAPSHOT.jar"]