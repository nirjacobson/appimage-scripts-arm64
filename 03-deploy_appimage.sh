#!/bin/bash

SYSTEM=$1
PROJECT=$2

if [[ -z $PROJECT ]]; then
	PROJECT=$1
	SYSTEM=
fi

if [[ -n $SYSTEM ]]; then
	./appimagetool-947-aarch64.AppImage -s deploy "~/GitHub/$PROJECT"/AppImage_arm64/usr/share/applications/*.desktop
else
	./appimagetool-947-aarch64.AppImage deploy "~/GitHub/$PROJECT"/AppImage_arm64/usr/share/applications/*.desktop
fi
