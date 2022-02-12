#!/bin/bash
set -eu

wget "https://github.com/muesli/duf/releases/download/v0.8.1/duf_0.8.1_linux_amd64.deb" -nv -O /tmp/duf.deb
dpkg -i /tmp/duf.deb
