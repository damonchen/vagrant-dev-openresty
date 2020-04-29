#/usr/bin/env bash

# if in china, change the source may better
sudo sed -i 's;http://archive.ubuntu.com/;https://mirrors.aliyun.com/;g' /etc/apt/sources.list
sudo apt-get update
sudo apt-get -y install --no-install-recommends wget gnupg ca-certificates
wget -O - https://openresty.org/package/pubkey.gpg | sudo apt-key add -
sudo apt-get -y install --no-install-recommends software-properties-common
sudo add-apt-repository -y "deb http://openresty.org/package/ubuntu $(lsb_release -sc) main"
sudo apt-get update
sudo apt-get -y install openresty
sudo apt-get install -y libpcre3-dev libssl-dev perl make build-essential curl
sudo apt-get install -y systemtap
sudo apt-get install -y --no-install-recommends cpanminus
