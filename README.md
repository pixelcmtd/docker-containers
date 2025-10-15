# docker-containers

Sources for some of the Docker images I maintain.

> [!WARNING]
> The `prometheus` image is deprecated and will be archived on 31 October 2025.
> Use [`ubuntu/prometheus`](https://hub.docker.com/r/ubuntu/prometheus) instead.

| Tag                  | Base           | Software                                          |
| -------------------- | -------------- | ------------------------------------------------- |
| gcc-aarch64-none-elf | ubuntu:latest  | GNU `binutils` and GCC for `aarch64-none-elf`     |
| gcc-x86\_64-none-elf | ubuntu:latest  | GNU `binutils` and GCC for `x86_64-none-elf`      |
| tor-proxy            | ubuntu:18.04   | `tor` + `polipo` = SOCKSv5 and HTTP proxy for TOR |
| llvm                 | ubuntu:rolling | `llvm`, `clang`, `lld`, `lldb`, ...               |
| prometheus           | ubuntu:latest  | `prometheus`                                      |
