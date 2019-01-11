#!/bin/bash

qemu-img create /image/ubuntu.img 1g
mkfs.ext2 /image/ubuntu.img
mount -o loop /image/ubuntu.img /mnt/ubuntu
debootstrap bionic /mnt/ubuntu http://archive.ubuntu.com/ubuntu/
umount /mnt/ubuntu
