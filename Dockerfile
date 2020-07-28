FROM ubuntu:18.04 as base

ARG VER=1.9.6
RUN apt-get update -y && \
    apt-get install -yqq \
        ca-certificates \
        wget \
        curl \
        telnet \
        gpg \
        apt-transport-https && \
        apt clean

# Pull down the tar, unpack, rename folder, remove tar
RUN wget https://github.com/nanopool/nanominer/releases/download/v$VER/nanominer-linux-$VER.tar.gz && \
    tar -xf nanominer-linux-$VER.tar.gz && \
    mv nanominer-linux-$VER nanominer && \
    rm nanominer-linux-$VER.tar.gz

# Bring in the config.ini
COPY config.ini /nanominer

WORKDIR nanominer

# Add in start.up to read env variables