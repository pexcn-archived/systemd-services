#!/bin/bash -e

# config
curl -sSL https://github.com/pexcn/systemd-services/raw/master/udp2raw/config/udp2raw.conf --create-dirs -o /etc/udp2raw/udp2raw.conf

# service
curl -sSL https://github.com/pexcn/systemd-services/raw/master/udp2raw/udp2raw.service --create-dirs -o /lib/systemd/system/udp2raw.service

# enable
systemctl enable udp2raw
systemctl start udp2raw

echo
echo "udp2raw config: /etc/udp2raw/udp2raw.conf"
echo
echo "udp2raw installed."
