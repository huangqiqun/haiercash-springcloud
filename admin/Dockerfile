FROM java:8

VOLUME /tmp

ADD build/libs/admin.jar app.jar
RUN bash -c 'touch /app.jar'
EXPOSE 5555
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]