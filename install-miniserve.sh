#!/bin/bash
set -eu

wget "https://github.com/svenstaro/miniserve/releases/download/v0.19.4/miniserve-v0.19.4-x86_64-unknown-linux-musl" -nv -O /tmp/miniserve
install -m 755 /tmp/miniserve /usr/local/bin/
