#!/usr/bin/env bash

readonly DATA_DIR='orgs-data'

find "$DATA_DIR" -type f | while read f; do
  sort -u -o "$f" "$f"
done

readonly MODIFIED="$(git status -s "$DATA_DIR")"

if [ -n "$MODIFIED" ]; then
  echo -e "::error ::some files are not sort-uniqed:\n$MODIFIED"
  exit 1
fi
