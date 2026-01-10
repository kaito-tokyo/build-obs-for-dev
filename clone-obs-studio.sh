#!/bin/bash
set -euo pipefail

rm -rf obs-studio
git clone --recursive https://github.com/obsproject/obs-studio.git

perl -pi -e 's/add_subdirectory(libobs-metal)//' obs-studio/CMakeLists.txt
