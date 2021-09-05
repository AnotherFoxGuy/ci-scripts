#!/bin/bash
set -eu

wget "https://github.com/svenstaro/miniserve/releases/download/v0.17.0/miniserve-v0.17.0-x86_64-unknown-linux-musl" -nv -O /tmp/miniserve
install -m 755 /tmp/miniserve /usr/local/bin/
