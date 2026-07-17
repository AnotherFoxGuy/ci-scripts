#!/bin/bash
set -eu

wget "https://github.com/Kitware/CMake/releases/download/v4.4.0/cmake-4.4.0-Linux-x86_64.sh" -nv -O /tmp/cmake.sh
sh /tmp/cmake.sh --exclude-subdir --prefix=/usr/local
