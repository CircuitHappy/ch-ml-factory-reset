#!/bin/bash
# Set up Missing Link for release

# Set the hostname to MissingLink-XXXX
sh /usr/bin/ch-set-hostname.sh

# Disable SSH
/etc/init.d/ssh stop
update-rc.d ssh disable

echo "Ready for Release!"
