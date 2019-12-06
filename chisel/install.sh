#!/bin/bash -e

# config
curl -sSL https://github.com/pexcn/systemd-services/raw/master/chisel/config/chisel.conf --create-dirs -o /etc/chisel/chisel.conf

# service
curl -sSL https://github.com/pexcn/systemd-services/raw/master/chisel/chisel.service --create-dirs -o /lib/systemd/system/chisel.service

# enable
systemctl enable chisel
systemctl start chisel

echo
echo "chisel config: /etc/chisel/chisel.conf"
echo
echo "chisel installed."
