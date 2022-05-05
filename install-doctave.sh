#!/bin/bash
set -eu

mkdir -p /tmp/doctave
wget "https://github.com/Doctave/doctave/releases/download/0.4.2/doctave-0.4.2-x86_64-unknown-linux-musl.tar.gz" -nv -O /tmp/doctave.tar.gz
tar xvzf /tmp/doctave.tar.gz -C /tmp/doctave
install -m 755 /tmp/doctave/doctave-0.4.2-x86_64-unknown-linux-musl/doctave /usr/local/bin/
