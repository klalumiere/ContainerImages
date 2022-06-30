#!/usr/bin/env bash

set -eo pipefail
script_directory="$(dirname "$(readlink --canonicalize "$0")")"

export DOCKER_BUILDKIT=1 # Search for <dockerfile-name>.dockerignore

pushd $script_directory
docker build --tag klalumiere/ubuntu-clang:20-10 .
popd 
