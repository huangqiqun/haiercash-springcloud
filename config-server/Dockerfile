FROM java:8

VOLUME /tmp

ADD build/libs/config-server.jar app.jar
RUN bash -c 'touch /app.jar'
EXPOSE 8800
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]