#!/bin/bash

PROJECT=$1

cd "~/GitHub/$PROJECT/AppImage_arm64/usr/lib64"
mkdir -p qt6/plugins
for y in `ls qt5/plugins`; do
	cp -rf "/usr/lib64/qt6/plugins/$y" qt6/plugins/
done
mkdir tmp
cp qt6/plugins/platforms/{libqxcb*,libqwayland*} tmp/
rm -rf qt6/plugins/platforms/*
cp tmp/* qt6/plugins/platforms/
rm -rf tmp
cp -rf /usr/lib64/qt6/plugins/wayland* qt6/plugins/
rm -rf qt5
