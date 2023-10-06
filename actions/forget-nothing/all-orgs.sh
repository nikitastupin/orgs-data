#!/usr/bin/env bash

readonly DATA_DIR='orgs-data'

find "$DATA_DIR/orgs-data" -type f  \
  | xargs cat                       \
  | cut -f 2                        \
  | grep -E '^https://github\.com/' \
  | sort -u                         \
  | cut -d / -f 4
