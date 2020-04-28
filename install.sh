#!/bin/sh

set -e

if ! which ag > /dev/null ; then
  echo "Note: these hooks require the silver searcher (ag) to run."
  echo "https://github.com/ggreer/the_silver_searcher"
fi

script_path=$(dirname "$0")
repo_path="${1?}"

if [[ ! -e "$repo_path/.git" ]] ; then
  echo "$1 is not a git repository."
  exit 1
fi

rm -rf "$repo_path/.git/hooks"
ln -s "$script_path/src" "$repo_path/.git/hooks"
