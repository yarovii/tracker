FROM java:8
VOLUME /tmp
ADD target/tracker.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
