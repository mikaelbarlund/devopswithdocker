ARG APP_HOME=/app
ARG MINIMAL_JAVA_HOME=/opt/java-minimal
# Found a way to build minimal JDK for Spring Boot from stackoverflow
# First stage: JDK 11 with modules required for Spring Boot
FROM openjdk:11-jdk as packager

# target JDK installation names
ENV OPT="/opt"
ARG MINIMAL_JAVA_HOME

# build modules distribution
RUN jlink \
    --verbose \
    --add-modules \
        java.base,java.sql,java.naming,java.desktop,java.management,java.security.jgss,java.instrument \
        # java.naming - javax/naming/NamingException
        # java.desktop - java/beans/PropertyEditorSupport
        # java.management - javax/management/MBeanServer
        # java.security.jgss - org/ietf/jgss/GSSException
        # java.instrument - java/lang/instrument/IllegalClassFormatException
    --compress 2 \
    --strip-debug \
    --no-header-files \
    --no-man-pages \
    --output "$MINIMAL_JAVA_HOME"



# Checkout from GIT
FROM alpine/git as GIT
ARG APP_HOME
WORKDIR $APP_HOME
RUN git clone https://github.com/docker-hy/spring-example-project .


FROM openjdk:11-jdk as BUILD_IMAGE
ARG APP_HOME
WORKDIR $APP_HOME
COPY --from=GIT $APP_HOME .
RUN ./mvnw package


FROM debian:stretch-slim
ARG APP_HOME
ARG MINIMAL_JAVA_HOME

ENV JAVA_HOME=$MINIMAL_JAVA_HOME
ENV PATH="$PATH:$JAVA_HOME/bin"

RUN useradd app
USER app
WORKDIR $APP_HOME

COPY --chown=app --from=packager $MINIMAL_JAVA_HOME $JAVA_HOME
COPY --chown=app --from=BUILD_IMAGE $APP_HOME/target/docker-example-1.1.3.jar ./application.jar

EXPOSE 8080
ENTRYPOINT ["java","-jar","./application.jar"]
