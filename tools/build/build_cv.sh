#!/bin/bash

# generate cv view's
./gradlew tasks cvAll

# copy assets to build file
cp -r ./assets ./build/assets

# copy DevResume view as default view
cp ./build/DevResume/index.html ./build/index.html
# fix the correct path for the links
sed -i 's|\.\./|\./|g' ./build/index.html
