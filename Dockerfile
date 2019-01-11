FROM ubuntu:18.04 as build

RUN mkdir -p /mnt/ubuntu && \
    mkdir -p /image && \
    DEBIAN_FRONTEND=noninteractive; \
    apt-get update && \
    apt-get install -y \
        debootstrap \
        qemu \
        qemu-utils

WORKDIR /

ADD ./build.sh /build
