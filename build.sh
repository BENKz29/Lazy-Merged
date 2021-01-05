#bin!bash

#cvirontment
apt-get install flex bison ncurses-dev texinfo gcc gperf patch libtool automake g++ libncurses5-dev gawk subversion expat libexpat1-dev python-all-dev binutils-dev libgcc1:i386 bc libcloog-isl-dev libcap-dev autoconf autoconf-archive libgmp-dev build-essential gcc-multilib g++-multilib pkg-config libmpc-dev libmpfr-dev autopoint gettext liblzma-dev libssl-dev libz-dev --y

#cloning
git clone https://github.com/Calliope-K/build-tools-gcc
cd build-tools-gcc

#start
./build -a arm64 -s linaro -v 7 -V
