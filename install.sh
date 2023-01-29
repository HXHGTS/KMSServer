#!/bin/sh

echo "正在关闭并卸载vlmcsd. . ."

systemctl stop vlmcsd-x64-musl

systemctl disable vlmcsd-x64-musl

rm -rf /opt/binaries

echo "正在下载vlmcsd. . ."

wget https://github.com/Wind4/vlmcsd/releases/download/svn1113/binaries.tar.gz -O /opt/binaries.tar.gz

echo "正在安装vlmcsd. . ."

cd /opt

tar -zvxf binaries.tar.gz

rm -rf binaries.tar.gz

cd /opt/binaries/Linux/intel/static && ./vlmcsd-x64-musl-static

curl https://raw.githubusercontent.com/HXHGTS/KMSServer/main/vlmcsd-x64-musl.service > /etc/systemd/system/vlmcsd-x64-musl.service

systemctl daemon-reload

systemctl enable vlmcsd-x64-musl

systemctl start vlmcsd-x64-musl

echo "vlmcsd已安装！"
