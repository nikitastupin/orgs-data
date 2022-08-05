#!/bin/bash

# https://stackoverflow.com/a/246128
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
ROOT="$(dirname "$DIR")"

find "$ROOT/orgs-data" -type f      \
  | xargs cat                       \
  | cut -f 2                        \
  | grep -E '^https://github\.com/' \
  | sort -u                         \
  | cut -d / -f 4
