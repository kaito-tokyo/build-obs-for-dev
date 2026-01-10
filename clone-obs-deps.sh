#!/bin/bash
set -euo pipefail

rm -rf obs-deps
git clone https://github.com/obsproject/obs-deps.git

echo > obs-deps/utils.zsh/functions/fix_rpaths
cp 30-build.zsh obs-deps/utils.zsh/30-build.zsh
rm obs-deps/deps.macos/90-syphon.zsh
