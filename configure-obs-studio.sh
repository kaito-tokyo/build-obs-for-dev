#!/bin/bash
set -euo pipefail

DEPS_BUILD_DIR=$(pwd)/obs-deps/macos-arm64

cmake -S obs-studio -B build_macos_dev -G Xcode \
  -DCMAKE_PREFIX_PATH="$DEPS_BUILD_DIR/obs-deps-arm64;$DEPS_BUILD_DIR/obs-qt6-arm64;$DEPS_BUILD_DIR/obs-ffmpeg-arm64" \
  -DCMAKE_OSX_ARCHITECTURES=arm64 \
  -DCMAKE_OSX_DEPLOYMENT_TARGET=12.0 \
  -DOBS_CODESIGN_TEAM=4HMJS6J4MZ \
  -DENABLE_BROWSER=OFF \
  -DCMAKE_COMPILE_WARNING_AS_ERROR=OFF
