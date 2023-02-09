FROM ubuntu:18.04

MAINTAINER Louis Liu <s041978@hotmail.com> 

WORKDIR /mnt/

ARG DEBIAN_FRONTEND=noninteractive

# Install package dependencies
RUN apt-get update &&\
    apt-get install -y --no-install-recommends software-properties-common build-essential linux-tools-common  \
            autoconf libtool pkg-config ca-certificates libssl-dev pkg-config linux-tools-4.15.0-142-generic \
            git wget vim man cppman \
            automake cmake g++ gcc \
            gdb valgrind && \
    apt-get clean

ENTRYPOINT /bin/bash
