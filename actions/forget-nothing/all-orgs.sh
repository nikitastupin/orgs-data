#!/usr/bin/env bash

readonly DATA_DIR="$(realpath orgs-data)"

echo "info: $DATA_DIR" >&2

find "$DATA_DIR" -type f  \
  | xargs cat                       \
  | cut -f 2                        \
  | grep -E '^https://github\.com/' \
  | cut -d / -f 4                   \
  | sort -u 
