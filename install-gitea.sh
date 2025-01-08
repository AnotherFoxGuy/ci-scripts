#!/bin/bash
set -eu

wget "https://github.com/go-gitea/gitea/releases/download/v1.22.6/gitea-1.22.6-linux-amd64" -nv -O /tmp/gitea
install -m 755 /tmp/gitea /usr/local/bin/
