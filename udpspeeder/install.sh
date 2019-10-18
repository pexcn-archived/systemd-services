#!/bin/bash -e

# config
curl -sSL https://github.com/pexcn/systemd-services/raw/master/udpspeeder/config/udpspeeder.conf --create-dirs -o /etc/udpspeeder/udpspeeder.conf

# service
curl -sSL https://github.com/pexcn/systemd-services/raw/master/udpspeeder/udpspeeder.service --create-dirs -o /lib/systemd/system/udpspeeder.service

# enable
systemctl enable udpspeeder
systemctl start udpspeeder

echo
echo "udpspeeder config: /etc/udpspeeder/udpspeeder.conf"
echo
echo "udpspeeder installed."
