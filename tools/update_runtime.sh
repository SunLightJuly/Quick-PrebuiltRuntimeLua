#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
RUNTIME_DIR=$DIR/../PrebuiltRuntimeLua/runtime
RUNTIME_NAME=PrebuiltRuntimeLua

MAC_DIR=$RUNTIME_DIR/mac
SRC_FILE="$MAC_DIR/$RUNTIME_NAME Mac.app"
DST_FILE=$MAC_DIR/$RUNTIME_NAME.app
if [ -d "$SRC_FILE" ]; then
    rm -rf "$DST_FILE"
    mv "$SRC_FILE" "$DST_FILE"
fi

IOS_DIR=$RUNTIME_DIR/ios
IOS_FILE="$RUNTIME_NAME iOS.app"
SRC_FILE="$IOS_DIR/$RUNTIME_NAME iOS.app"
DST_FILE=$IOS_DIR/$RUNTIME_NAME.app
find ~/Library/Developer/Xcode/ -name "$IOS_FILE" -depth -exec cp -rf {} $IOS_DIR/ \;
if [ -d "$SRC_FILE" ]; then
    rm -rf "$DST_FILE"
    mv "$SRC_FILE" "$DST_FILE"
fi

ANDROID_DIR=$RUNTIME_DIR/android
ANDROID_FILE=$RUNTIME_NAME.apk
DST_FILE=$ANDROID_DIR/$ANDROID_FILE
rm $DST_FILE
$DIR/../PrebuiltRuntimeLua/frameworks/runtime-src/proj.android/build_apk.sh -o $DST_FILE

