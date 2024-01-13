#!/bin/bash

set -e

if [[ "$(docker images -q python_and_r:latest 2> /dev/null)" == "" ]]; then
  docker build --no-cache -t python_and_r:latest .
fi

docker run --rm -v $(pwd):/python_and_r -w /python_and_r python_and_r:latest