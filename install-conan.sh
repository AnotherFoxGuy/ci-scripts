#!/bin/bash
set -eu

cd /tmp/
lastversion conan-io/conan --assets --filter deb -d
dpkg -i $(find . -name "conan-ubuntu-64*.deb")