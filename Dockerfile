FROM phusion/baseimage

MAINTAINER Maik Ellerbrock (github.com/ellerbrock)

ENV CONTAINER_VERSION 0.0.1
ENV CONTAINER_NAME frapsoft/stress
ENV CONTAINER_REPO https://github.com/ellerbrock/stress-docker

USER root

RUN apt-get update && \ 
    apt-get upgrade -y && \
    apt-get install --no-install-recommends stress -y && \
    apt-get clean && \ 
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENTRYPOINT ["stress"]
CMD ["--version"]

