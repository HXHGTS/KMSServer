#!/bin/sh

echo "正在关闭并卸载vlmcsd. . ."

systemctl stop vlmcsd-x64-musl

systemctl disable vlmcsd-x64-musl

rm -rf /opt/vlmcsd

echo "正在下载vlmcsd. . ."

apt install wget tar -y

wget https://github.com/Wind4/vlmcsd/releases/download/svn1113/binaries.tar.gz -O /opt/binaries.tar.gz

echo "正在安装vlmcsd. . ."

cd /opt

tar -zvxf binaries.tar.gz

mkdir /opt/vlmcsd

mv -f /opt/binaries/Linux/intel/static/vlmcsd-x64-musl-static /opt/vlmcsd/vlmcsd-x64-musl-static

rm -rf binaries.tar.gz /opt/binaries

curl https://raw.githubusercontent.com/HXHGTS/KMSServer/main/vlmcsd-x64-musl.service > /etc/systemd/system/vlmcsd-x64-musl.service

systemctl daemon-reload

systemctl enable vlmcsd-x64-musl

systemctl start vlmcsd-x64-musl

echo "vlmcsd已安装！"
