#!/bin/bash
set -eu

wget "https://github.com/Kitware/CMake/releases/download/v3.21.5/cmake-3.21.5-Linux-x86_64.sh" -nv -O /tmp/cmake.sh
sh /tmp/cmake.sh --exclude-subdir --prefix=/usr/local
