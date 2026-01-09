#!/bin/bash
set -euo pipefail

pushd obs-deps
perl -pi -e 's/typeset -g -r current_date=.*$/typeset -g -r current_date="2025-08-23"/' utils.zsh/10-bootstrap.zsh
perl -pi -e 's/typeset -g -a c_flags=\(.*\)/typeset -g -a c_flags=(-w -pipe -fsanitize=address)/' utils.zsh/30-build.zsh
perl -pi -e 's/typeset -g -a cxx_flags=\(.*\)/typeset -g -a cxx_flags=(-w -pipe -fsanitize=address)/' utils.zsh/30-build.zsh
perl -pi -e 's/typeset -g -a ld_flags=\(.*\)/typeset -g -a ld_flags=(-fsanitize=address)/' utils.zsh/30-build.zsh
./build-ffmpeg.zsh --target macos-arm64 --config Release --static
popd
