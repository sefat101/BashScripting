#!/bin/bash
#difference between $* and *@
#command example - ./args.sh "Hello World" Linux Shell
echo "Using \"\$*\":"
for arg in "$*"; do
  echo "$arg"
done

echo "Using \"\$@\":"
for arg in "$@"; do
  echo "$arg"
done
