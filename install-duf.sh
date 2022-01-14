#!/bin/bash
set -eu

wget "https://github.com/muesli/duf/releases/download/v0.7.0/duf_0.7.0_linux_amd64.deb" -nv -O /tmp/duf.deb
dpkg -i /tmp/duf.deb
