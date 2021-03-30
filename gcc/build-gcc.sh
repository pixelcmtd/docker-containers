cd /usr/src/ && \
curl -LO ftp://ftp.gnu.org/gnu/gcc/gcc-$1/gcc-$1.tar.gz && \
tar zxf gcc-$1.tar.gz && \
rm -f gcc-$1.tar.gz && \
chown -R root:root gcc-$1 && \
chmod -R o-w,g+w gcc-$1 && \
mkdir build-gcc && \
cd build-gcc && \
../gcc-$1/configure --target=$2 --prefix=/usr --program-prefix=$2- --disable-nls --enable-languages=c,c++ --without-headers && \
make -j$(nproc) all-gcc && \
make -j$(nproc) all-target-libgcc && \
make install-gcc && \
make install-target-libgcc && \
rm -rf build-gcc.sh build-gcc gcc-$1
