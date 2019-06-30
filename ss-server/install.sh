#!/bin/bash -e

# config
curl -sSL https://github.com/pexcn/systemd-services/raw/master/ss-server/config/aes.json --create-dirs -o /etc/shadowsocks-libev/aes.json
curl -sSL https://github.com/pexcn/systemd-services/raw/master/ss-server/config/chacha20.json --create-dirs -o /etc/shadowsocks-libev/chacha20.json

# service
curl -sSL https://github.com/pexcn/systemd-services/raw/master/ss-server/ss-server%40.service --create-dirs -o /lib/systemd/system/ss-server@.service

# enable
systemctl enable ss-server@aes
systemctl start ss-server@aes
echo "AES config in: /etc/shadowsocks-libev/aes.json"
systemctl enable ss-server@chacha20
systemctl start ss-server@chacha20
echo "CHACHA20 config in: /etc/shadowsocks-libev/chacha20.json"
