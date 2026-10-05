#!/bin/bash

PROJECT=$1

./01-cleanup_appimage.sh $PROJECT
./02-prepare_appimage.sh $PROJECT
./03-deploy_appimage.sh $PROJECT
./04-finalize_appimage.sh $PROJECT
./05-create_appimage.sh $PROJECT
