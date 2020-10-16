ARG JAVA_HOME_TMP=/tmp/java
FROM openjdk:11-jdk-oracle as java
ARG JAVA_HOME_TMP
RUN cp -r $JAVA_HOME $JAVA_HOME_TMP

FROM ubuntu:16.04
ARG JAVA_HOME_TMP

RUN apt-get update && apt-get install -y curl git

ENV USER=developer
ENV HOME /home/$USER
ENV JAVA_HOME=$HOME/java

RUN useradd -ms /bin/bash -p $USER $USER
RUN echo "$USER:$USER" | chpasswd
USER $USER
RUN mkdir $HOME/working
RUN cd $HOME/working

RUN mkdir -p $JAVA_HOME
COPY --chown=$USER --from=java $JAVA_HOME_TMP $JAVA_HOME
ENV PATH="$JAVA_HOME/bin:${PATH}"

ARG MAVEN_VERSION=3.6.3
ARG SHA=c35a1803a6e70a126e80b2b3ae33eed961f83ed74d18fcd16909b2d44d7dada3203f1ffe726c17ef8dcca2dcaa9fca676987befeadc9b9f759967a8cb77181c0
ARG BASE_URL=https://www.nic.funet.fi/pub/mirrors/apache.org/maven/maven-3/${MAVEN_VERSION}/binaries
RUN mkdir -p $HOME/maven \
  && echo ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz \
  && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz \
  && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c - \
  && tar -xzf /tmp/apache-maven.tar.gz -C $HOME/maven --strip-components=1 \
  && rm -f /tmp/apache-maven.tar.gz

ENV MAVEN_HOME $HOME/maven
ENV MAVEN_CONFIG "$USER_HOME_DIR/.m2"
ENV PATH="$MAVEN_HOME/bin:${PATH}"

RUN ls -l
RUN pwd

COPY --chown=$USER ./entrypoint.sh $HOME/
RUN chmod +x $HOME/entrypoint.sh
WORKDIR $HOME/working
ENTRYPOINT ["/home/developer/entrypoint.sh"]

