FROM jenkins/jenkins:lts-alpine
# if we want to install via apt
USER root
#RUN apt-get update && apt-get install -y ruby make more-thing-here

RUN apk add --no-cache bash curl git openssh-client

ENV VERSION "17.03.1-ce"
RUN curl -L -o /tmp/docker-$VERSION.tgz https://get.docker.com/builds/Linux/x86_64/docker-$VERSION.tgz \
    && tar -xz -C /tmp -f /tmp/docker-$VERSION.tgz \
    && mv /tmp/docker/docker /usr/bin \
    && rm -rf /tmp/docker-$VERSION /tmp/docker

USER jenkins # drop back

