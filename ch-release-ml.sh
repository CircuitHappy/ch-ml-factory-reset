#!/bin/bash
# Set up Missing Link for release

# Set the hostname to MissingLink-XXXX
sh /usr/bin/ch-set-hostname.sh

# Disable SSH
systemctl stop ssh
systemctl disable ssh

echo "Ready for Release!"

reboot
