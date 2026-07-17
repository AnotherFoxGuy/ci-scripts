#!/bin/bash
set -eu

mkdir -p /tmp/btop
wget "https://github.com/aristocratos/btop/releases/download/v1.4.7/btop-x86_64-unknown-linux-musl.tbz" -nv -O /tmp/btop.tbz
tar xvjf /tmp/btop.tbz -C /tmp/btop
install -m 755 /tmp/btop /usr/local/bin/
