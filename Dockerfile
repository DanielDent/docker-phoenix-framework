FROM danieldent/elixir-lang
MAINTAINER Daniel Dent (https://www.danieldent.com)

# Based on Dockerfile by shanesveller

## PHOENIX DEPS

RUN export DEBIAN_FRONTEND=noninteractive && \
    apt-get update -q && \
    apt-get -y install apt-transport-https && \
    curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add - && \
    echo 'deb https://deb.nodesource.com/node_0.12 trusty main' > /etc/apt/sources.list.d/nodesource.list && \
    apt-get update -q && \
    apt-get -y install git inotify-tools nodejs=0.12.7-1nodesource1~trusty1 postgresql-client && \
    apt-get clean -y && \
    rm -rf /var/cache/apt/*

