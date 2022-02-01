FROM ubuntu:18.04
ENV USER root
RUN apt-get update -y
RUN apt-get -y install bison g++-multilib git gperf libxml2-utils make zip patchelf
RUN apt-get -y install python-networkx
RUN apt-get -y install flex curl libncurses5-dev libssl-dev zlib1g-dev gawk minicom nano
RUN apt-get -y install openjdk-8-jdk

# uboot v2016
RUN apt-get -y install device-tree-compiler

# kernel release-4.4
RUN apt-get -y install liblz4-tool
RUN apt-get -y install bison

# recommended
RUN apt-get -y install openssh-server vim
RUN apt-get -y install qemu-user-static
RUN apt-get -y install exfat-fuse exfat-utils p7zip-full tree

# build git-2.18+
RUN apt-get -y install autoconf
RUN apt-get -y install libcurl4-openssl-dev libssh-dev

# build x86-x64 kernel
RUN apt-get -y install pkg-config
RUN apt-get -y install libelf-dev

# build mtd-utils v2.0.2+
RUN apt-get -y install libtool

# virtualbox
RUN apt-get -y install libqt5core5a libqt5gui5 libqt5opengl5 \
	libqt5printsupport5 libqt5widgets5 libqt5x11extras5 libsdl1.2debian

# buildroot (rockchip)
RUN apt-get -y install texinfo
RUN apt-get -y install genext2fs

# crosstool-ng
RUN apt-get -y install lzip help2man libtool libtool-bin

# qemu
RUN apt-get -y install debootstrap

# for allwinner
RUN apt-get -y install u-boot-tools swig python-dev python3-dev

# act-greq
RUN apt -y install ack-grep

# openwrt
RUN apt-get -y install time gettext java-propose-classpath apt zstd

# simg2img
RUN apt-get -y install android-tools-fsutils


# libreELEC
RUN apt-get -y install bc lzop xfonts-utils xfonts-utils xfonts-utils xsltproc libjson-perl

# for openwrt armhf
RUN apt-get -y install libc6

# for wireguard
RUN apt-get -y install libmnl-dev kmod

WORKDIR home/tugy/develop/T3plus/s5pxx18-android-7/

# for 64bit cross compiler toolchain

#RUN mkdir -p /opt/FriendlyARM/toolchain
#RUN mkdir -p /opt/FriendlyARM/prebuilts
RUN git clone https://github.com/friendlyarm/prebuilts.git  /opt/FriendlyARM/prebuilts

#RUN cd /
#RUN git clone https://github.com/friendlyarm/prebuilts.git 
RUN cat /opt/FriendlyARM/prebuilts/gcc-x64/toolchain-6.4-aarch64.tar.* | tar -xzvf - -i -C /
#RUN tar -xxv --all-args-are-archives /opt/FriendlyARM/prebuilts/gcc-x64/toolchain-6.4-aarch64.tar.* 
ENV PATH=/opt/FriendlyARM/toolchain/6.4-aarch64/bin:$PATH
RUN curl https://storage.googleapis.com/git-repo-downloads/repo > /usr/local/bin/repo && \
    chmod +x /usr/local/bin/repo
ENTRYPOINT /bin/bash
