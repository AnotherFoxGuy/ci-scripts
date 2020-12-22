#!/bin/bash
set -eu

mkdir -p /tmp/sccache
wget "https://github.com/mozilla/sccache/releases/download/0.2.14/sccache-0.2.14-x86_64-unknown-linux-musl.tar.gz" -nv -O /tmp/sccache.tar.gz
tar xvzf /tmp/sccache.tar.gz --strip 1 -C /tmp/sccache
install -m 755 /tmp/sccache/sccache /usr/local/bin/
