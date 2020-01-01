#!/usr/bin/env bash

set -eo pipefail

set +x

bin_dir=$(cd "${BASH_SOURCE[0]%/*}" && pwd)

# shellcheck disable=SC1090
source "$bin_dir/setup_rubygems_and_bundler.sh"

bundle install --jobs 3 --retry 3

set -x
