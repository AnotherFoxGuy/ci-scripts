#!/bin/bash
set -eu

mkdir -p /tmp/sccache
wget "https://github.com/mozilla/sccache/releases/download/v0.2.15/sccache-v0.2.15-x86_64-unknown-linux-musl.tar.gz" -nv -O /tmp/sccache.tar.gz
tar xvzf /tmp/sccache.tar.gz --strip 1 -C /tmp/sccache
install -m 755 /tmp/sccache/sccache /usr/local/bin/
