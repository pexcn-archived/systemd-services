#!/bin/bash -e

# config
curl -sSL https://github.com/pexcn/systemd-services/raw/master/socks5-server/config/config.ini --create-dirs -o /etc/socks5-server/config.ini

# service
curl -sSL https://github.com/pexcn/systemd-services/raw/master/socks5-server/socks5-server.service --create-dirs -o /lib/systemd/system/socks5-server.service

# enable
systemctl enable socks5-server
systemctl start socks5-server

echo
echo "socks5-server config: /etc/socks5-server/config.ini"
echo
echo "socks5-server installed."
