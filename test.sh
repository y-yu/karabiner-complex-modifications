#!/usr/bin/env bash

set -eo pipefail

SCRIPT_DIRECTORY="complex_modifications"

for FILENAME in `ls ./$SCRIPT_DIRECTORY`; do
  '/Library/Application Support/org.pqrs/Karabiner-Elements/bin/karabiner_cli' \
    --lint-complex-modifications \
    "${SCRIPT_DIRECTORY}/${FILENAME}"

  if [ $? != 0 ]; then
      exit 1
  fi
done

