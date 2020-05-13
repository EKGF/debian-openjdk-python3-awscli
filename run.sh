#!/usr/bin/env bash

./localbuild.sh || exit $?

local_workdir=$(pwd)

docker run \
  --interactive --tty --rm \
  --mount type=bind,source=${local_workdir},target=/home/ekgprocess/workdir \
  --workdir="/home/ekgprocess/workdir" \
  "$(< image.id)" "$@"
exit $?
