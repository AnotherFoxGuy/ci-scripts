#!/bin/bash
set -eu

wget "https://github.com/svenstaro/miniserve/releases/download/v0.23.2/miniserve-v0.23.2-x86_64-unknown-linux-musl" -nv -O /tmp/miniserve
install -m 755 /tmp/miniserve /usr/local/bin/
