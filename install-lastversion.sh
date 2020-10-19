#!/bin/bash
set -eu

wget "https://github.com/AnotherFoxGuy/ci-scripts/raw/main/lastversion" -O "/tmp/lastversion"
install -m 755 "/tmp/lastversion" "/usr/local/bin/" 
