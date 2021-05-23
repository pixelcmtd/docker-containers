# docker-containers
These are all of the Docker containers I maintain.

| Tag                  | Base           | Software                                          |
|----------------------|----------------|---------------------------------------------------|
| gcc-aarch64-none-elf | ubuntu:latest  | Binutils and GCC for `aarch64-none-elf`           |
| gcc-x86\_64-none-elf | ubuntu:latest  | Binutils and GCC for `x86_64-none-elf`            |
| tor-proxy            | ubuntu:18.04   | `tor` + `polipo` = SOCKSv5 and HTTP proxy for TOR |
| llvm                 | ubuntu:rolling | `llvm`, `clang`, `lld`, `lldb`, ...               |
| prometheus           | ubuntu:latest  | `prometheus`                                      |
