#!/bin/bash
set -eu

wget "https://github.com/zyedidia/eget/releases/download/v1.3.4/eget-1.3.4-linux_amd64.tar.gz" -nv -O /tmp/eget.tar.gz
tar xvzf /tmp/eget.tar.gz -C /tmp/eget
install -m 755 /tmp/eget/eget-1.3.4-linux_amd64/eget /usr/local/bin/
