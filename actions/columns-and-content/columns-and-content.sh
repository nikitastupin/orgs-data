#!/usr/bin/env bash

find orgs-data -type f | while read f; do
  if ! cut -f 1 "$f" | grep -vE '^[-]$'   | trurl --verify --no-guess-scheme -f -; then
    echo "::error ::bad 1st column in '$f' (more info in workflow run)"
    exit 1
  fi

  if ! cut -f 2 "$f" | grep -vE '^[+-?]$' | trurl --verify --no-guess-scheme -f -; then
    echo "::error ::bad 2nd column in '$f' (more info in workflow run)"
    exit 1
  fi

  # we don't care about the 3rd and further columns - can be whatever
done
