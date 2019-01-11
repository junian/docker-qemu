FROM ubuntu:18.04

RUN DEBIAN_FRONTEND=noninteractive; \
    apt-get update && apt-get install --no-install-recommends --no-upgrade -y \
    linux-image-4.18.0-13-generic \
    qemu

ENTRYPOINT [ \
    "qemu-system-x86_64", \
    "-kernel", "/boot/vmlinuz-4.18.0-13-generic", \
    "-append", "root=/dev/sda console=ttyS0 single", \
    "-m", "2G", \
    "-hda", "/ubuntu.img", \
    "--nographic" \
]
