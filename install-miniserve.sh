#!/bin/bash
set -eu

wget "https://github.com/svenstaro/miniserve/releases/download/v0.27.1/miniserve-v0.27.1-x86_64-unknown-linux-musl" -nv -O /tmp/miniserve
install -m 755 /tmp/miniserve /usr/local/bin/
