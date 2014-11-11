#!/bin/bash
DIST_DIR=$QUICK_V3_ROOT/quick/templates/lua-template-quick/runtime

sudo find ../ -name ".DS_Store" -depth -exec rm {} \;
if [ -d "$DIST_DIR" ]; then
    rm -fr "$DIST_DIR"
fi
mkdir -p "$DIST_DIR"
cp -rf ../PrebuiltRuntimeLua/runtime/ $DIST_DIR/