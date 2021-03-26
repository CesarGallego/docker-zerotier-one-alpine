#!/bin/sh
set -eu

if [ ! -e /dev/net/tun ]; then
  echo 'FATAL: cannot start ZeroTier One in container: /dev/net/tun not present.'
  exit 1
fi

echo "Ready" | exec /usr/sbin/zerotier-one
