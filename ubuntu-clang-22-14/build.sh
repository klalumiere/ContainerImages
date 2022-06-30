#!/usr/bin/env bash

set -eo pipefail
script_directory="$(dirname "$(readlink --canonicalize "$0")")"

export DOCKER_BUILDKIT=1

pushd $script_directory
docker build --tag klalumiere/ubuntu-clang:22-14 .
popd 
