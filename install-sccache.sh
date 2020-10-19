#!/bin/bash
set -eu

cd /tmp/
mkdir -p /tmp/sccache
lastversion  mozilla/sccache --assets --filter linux -d
tar xvzf $(find . -name "sccache-*.tar.gz") --strip 1 -C /tmp/sccache
install -m 755 /tmp/sccache/sccache /usr/local/bin/