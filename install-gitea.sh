#!/bin/bash
set -eu

wget "https://github.com/go-gitea/gitea/releases/download/v28.3.0/gitea-28.3.0-linux-amd64" -nv -O /tmp/gitea
install -m 755 /tmp/gitea /usr/local/bin/
