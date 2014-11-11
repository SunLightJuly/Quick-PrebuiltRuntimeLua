#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DIR="`dirname $DIR`"
WORKDIR=$DIR/temp/cur_version

if [ -d "$WORKDIR" ]; then
    rm -fr "$WORKDIR"
fi
mkdir -p "$WORKDIR"

cd "$DIR"
git archive master | tar -x -C "$WORKDIR"