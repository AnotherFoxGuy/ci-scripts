#!/bin/bash
set -eu

wget "https://dl.bintray.com/conan/installers/conan-ubuntu-64_1_34_0.deb" -nv -O /tmp/conan.deb
dpkg -i /tmp/conan.deb
