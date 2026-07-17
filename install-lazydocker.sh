#!/bin/bash
set -eu

mkdir -p /tmp/lazydocker
wget "https://github.com/jesseduffield/lazydocker/releases/download/v0.25.2/lazydocker_0.25.2_Linux_x86_64.tar.gz" -nv -O /tmp/lazydocker.tar.gz
tar xvzf /tmp/lazydocker.tar.gz -C /tmp/lazydocker
install -m 755 /tmp/lazydocker/lazydocker /usr/local/bin/
