#!/bin/bash

PROJECT=$1

cd "~/GitHub/$PROJECT/AppImage_arm64"
rm -rf lib etc
cd usr
rm -rf bin/* lib lib64 local
