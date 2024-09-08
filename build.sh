export CROSS_COMPILE_DIR=/opt/riscv64--glibc--bleeding-edge-2020.08-1
export PATH=$PATH:$CROSS_COMPILE_DIR/bin
mkdir -p $1/qt-5.15.10
./configure \
    -opensource \
    -confirm-license \
    -release \
    -optimize-size \
    -strip \
    -ltcg \
    -silent \
    -qpa linuxfb \
    -no-opengl \
    -skip webengine \
    -nomake tools \
    -nomake tests \
    -nomake examples \
    -xplatform linux-riscv64-gnu-g++ \
    -prefix /opt/qt-5.15.10 \
    -extprefix $1/qt-5.15.10
make -j16
make install

