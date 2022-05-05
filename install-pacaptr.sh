#!/bin/bash
set -eu

mkdir -p /tmp/pacaptr
wget "https://github.com/rami3l/pacaptr/releases/download/v0.15.2/pacaptr-linux-amd64.tar.gz" -nv -O /tmp/pacaptr.tar.gz
tar xvzf /tmp/pacaptr.tar.gz -C /tmp/pacaptr
install -m 755 /tmp/pacaptr/pacaptr /usr/local/bin/fakeman
