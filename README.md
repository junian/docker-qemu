## Build qemu image

```bash
docker build -t qemu-build .
docker run --privileged --rm -v ${PWD}:/image qemu-build /build
```

## Run qemu image

```bash
cd qemu
docker build -t qemu-run
cd ..
docker run --rm -v ${PWD}/ubuntu.img:/ubuntu.img qemu-run
```