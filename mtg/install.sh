#!/bin/bash -e

# config
curl -sSL https://github.com/pexcn/systemd-services/raw/master/mtg/config/mtg.conf --create-dirs -o /etc/mtg/mtg.conf

# service
curl -sSL https://github.com/pexcn/systemd-services/raw/master/mtg/mtg.service --create-dirs -o /lib/systemd/system/mtg.service

# enable
systemctl enable mtg
systemctl start mtg

echo
echo "mtg config: /etc/mtg/mtg.conf"
echo
echo "mtg installed."
