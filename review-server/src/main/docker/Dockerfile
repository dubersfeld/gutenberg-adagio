FROM openjdk:8-jdk-alpine
VOLUME /tmp

RUN apk update && apk upgrade && apk add netcat-openbsd

ADD review-server-0.1.0-SNAPSHOT.jar app.jar

ADD wrapper.sh wrapper.sh
RUN chmod +x wrapper.sh

EXPOSE 8082

ENTRYPOINT ["/bin/sh", "/wrapper.sh"]
