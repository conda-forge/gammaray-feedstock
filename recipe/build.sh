#!/usr/bin/env bash

set -o xtrace -o nounset -o pipefail -o errexit

cmake -S ${SRC_DIR} -B build -DCMAKE_POLICY_VERSION_MINIMUM=3.5 ${CMAKE_ARGS}
cmake --build build -j ${CPU_COUNT}
cmake --install build
