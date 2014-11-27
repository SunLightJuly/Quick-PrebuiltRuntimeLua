#!/bin/bash
VERSION=`cat $QUICK_V3_ROOT/VERSION`
DIST_WORKDIR=~/temp/quick_clear_ver
WORKDIR=$DIST_WORKDIR/quick-$VERSION

echo ""
echo "QUICK_V3_ROOT = \"$QUICK_V3_ROOT\""
echo "VERSION = \"$VERSION\""
echo "WORKDIR = \"$WORKDIR\""
echo ""

echo "Clean old work dir"
if [ -d "$WORKDIR" ]; then
    rm -fr "$WORKDIR"
fi
mkdir -p "$WORKDIR"

echo "Get Quick-x Packages"
cd "$QUICK_V3_ROOT"
git archive v3 | tar -x -C "$WORKDIR"
