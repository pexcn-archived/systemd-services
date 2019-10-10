#!/bin/bash -e

# config
curl -sSL https://github.com/pexcn/systemd-services/raw/master/trojan/config/server.json --create-dirs -o /etc/trojan/server.json

# service
curl -sSL https://github.com/pexcn/systemd-services/raw/master/trojan/trojan.service --create-dirs -o /lib/systemd/system/trojan.service

# enable
systemctl enable trojan
systemctl start trojan

echo
echo "trojan config: /etc/trojan/server.json"
echo
echo "trojan installed."
