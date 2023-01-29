#!/bin/sh

echo "正在下载vlmcsd. . ."

wget https://github.com/Wind4/vlmcsd/releases/download/svn1113/binaries.tar.gz -O /opt/binaries.tar.gz

echo "正在安装AdGuardHome DNS服务器. . ."

cd /opt

tar -zvxf binaries.tar.gz

rm -rf binaries.tar.gz

cd /opt/binaries/Linux/intel/static && ./vlmcsd-x64-musl-static

clear

echo "KMS服务器已安装！"
