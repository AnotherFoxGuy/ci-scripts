#!/bin/bash
set -eu

wget "https://github.com/Kitware/CMake/releases/download/v3.29.0/cmake-3.29.0-Linux-x86_64.sh" -nv -O /tmp/cmake.sh
sh /tmp/cmake.sh --exclude-subdir --prefix=/usr/local
