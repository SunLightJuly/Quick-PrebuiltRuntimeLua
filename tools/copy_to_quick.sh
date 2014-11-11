#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SRC_DIR=$DIR/../PrebuiltRuntimeLua/runtime
DIST_DIR=$QUICK_V3_ROOT/quick/templates/lua-template-quick/runtime

rm $SRC_DIR/win32/*.pbd
rm $SRC_DIR/win32/*.ilk
sudo find $SRC_DIR/ -name ".DS_Store" -depth -exec rm {} \;
if [ -d "$DIST_DIR" ]; then
    rm -fr "$DIST_DIR"
fi
mkdir -p "$DIST_DIR"
cp -rf $SRC_DIR/ $DIST_DIR/