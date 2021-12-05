#!/bin/bash
set -eu

mkdir -p /tmp/lazygit
wget "https://github.com/jesseduffield/lazygit/releases/download/v0.31.4/lazygit_0.31.4_Linux_x86_64.tar.gz" -nv -O /tmp/lazygit.tar.gz
tar xvzf /tmp/lazygit.tar.gz -C /tmp/lazygit
install -m 755 /tmp/lazygit/lazygit /usr/local/bin/
