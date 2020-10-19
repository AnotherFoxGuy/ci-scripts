#!/bin/bash
set -eu

mkdir -p /tmp/butler/
wget https://broth.itch.ovh/butler/linux-amd64/LATEST/archive/default -O /tmp/butler.zip
unzip /tmp/butler.zip -d /tmp/butler/
install /tmp/butler/butler /usr/local/bin/ -m 755
install /tmp/butler/7z.so /usr/local/lib/
install /tmp/butler/libc7zip.so /usr/local/lib/