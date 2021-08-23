#!/bin/bash
set -eu

wget "https://github.com/muesli/duf/releases/download/v0.6.2/duf_0.6.2_linux_amd64.deb" -nv -O /tmp/duf.deb
dpkg -i /tmp/duf.deb
