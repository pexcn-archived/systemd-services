#!/bin/bash -e

# config
curl -sSL https://github.com/pexcn/systemd-services/raw/master/netspeeder/config/netspeeder.conf --create-dirs -o /etc/netspeeder/netspeeder.conf

# service
curl -sSL https://github.com/pexcn/systemd-services/raw/master/netspeeder/netspeeder.service --create-dirs -o /lib/systemd/system/netspeeder.service

# enable
systemctl enable netspeeder
systemctl start netspeeder

echo
echo "netspeeder config: /etc/netspeeder/netspeeder.conf"
echo
echo "netspeeder installed."
