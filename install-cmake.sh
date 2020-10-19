#!/bin/bash
set -eu

cd /tmp/
lastversion Kitware/CMake --assets --filter sh -d
sh $(find . -name "cmake-*-Linux-x86_64.sh") --exclude-subdir --prefix=/usr/local