#!/bin/bash
set -eu

wget "https://github.com/go-gitea/gitea/releases/download/v1.27.0/gitea-1.27.0-linux-amd64" -nv -O /tmp/gitea
install -m 755 /tmp/gitea /usr/local/bin/
