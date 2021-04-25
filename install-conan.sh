#!/bin/bash
set -eu

wget "https://github.com/conan-io/conan/releases/latest/download/conan-ubuntu-64.deb" -nv -O /tmp/conan.deb
dpkg -i /tmp/conan.deb