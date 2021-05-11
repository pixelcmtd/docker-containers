export DEBIAN_FRONTEND=noninteractive && \
apt update && \
apt upgrade -y && \
apt install -y build-essential libgmp3-dev libmpfr-dev libisl-dev \
               libmpc-dev texinfo bison curl flex && \
cd /usr/src/ && \
curl -Lo binutils.tar.xz "$1" && \
curl -Lo gcc.tar.xz "$2" && \
curl -Lo tools.tar.gz https://github.com/chrissxYT/tools/archive/refs/heads/master.tar.gz && \
tar xJf binutils.tar.xz && \
tar xJf gcc.tar.xz && \
tar xzf tools.tar.gz && \
chown -R root:root binutils-* gcc-* tools-* && \
chmod -R o-w,g+w binutils-* gcc-* tools-* && \
mkdir build-binutils build-gcc && \
cd build-binutils && \
../binutils-*/configure --target=$3 --prefix=/usr --program-prefix=$3- --with-sysroot --disable-nls --disable-werror && \
make -j$(nproc) && \
make install && \
cd /usr/src/build-gcc && \
../gcc-*/configure --target=$3 --prefix=/usr --program-prefix=$3- --disable-nls --enable-languages=c,c++ --without-headers && \
make -j$(nproc) all-gcc && \
make -j$(nproc) all-target-libgcc && \
make install-gcc && \
make install-target-libgcc && \
cd /usr/src/tools-* && \
sh build_and_install && \
cd /usr/src/ && \
rm -rf build.sh build-* binutils-* gcc-* tools-* *.tar.?z && \
apt remove -y build-essential gcc make libgmp3-dev libmpfr-dev libisl-dev \
              libmpc-dev texinfo bison curl flex && \
apt autoremove -y
