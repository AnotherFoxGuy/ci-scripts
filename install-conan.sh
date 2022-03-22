#!/bin/bash
set -eu
  
wget "https://github.com/AnotherFoxGuy/conan-onefile/releases/latest/download/conan-linux" -nv -O /tmp/conan
install -m 755 /tmp/conan /usr/local/bin/