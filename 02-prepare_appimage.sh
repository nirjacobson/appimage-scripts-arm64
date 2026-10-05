#!/bin/bash

PROJECT=$1

cd "~/GitHub/$PROJECT"
cp "build_arm64/$PROJECT" "AppImage_arm64/usr/bin/"

cd "AppImage_arm64/usr"
mkdir lib64
cd lib64
cp /usr/lib64/libwayland* .
cp /usr/lib64/libQt6Xcb* .
cp /usr/lib64/libQt6WaylandClient* .
cp /usr/lib64/libQt6Xml* .
rm -rf *.so *.so.0 *.so.1 *.so.6 *.prl
for y in `ls`; do mv "$y" "$(echo $y | cut -d. -f1,2,3)"; done
