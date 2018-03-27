FROM openjdk:8-jdk-alpine
COPY files/dataproducer.jar /opt/dataproducer/lib/
ENTRYPOINT ["/usr/bin/java"]
EXPOSE 8080
CMD ["-jar", "/opt/dataproducer/lib/dataproducer.jar"]
