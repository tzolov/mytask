FROM springcloud/openjdk:2.0.1.RELEASE
ENV LANG=C.UTF-8
ARG JAR_FILE
ADD target/${JAR_FILE} task.jar
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar","/task.jar"]