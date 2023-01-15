#!/bin/bash

# generate cv view's
ninja -v

# copy assets to build file
cp -r ./assets ./build/assets

# copy ceevee view as default view
cp ./build/ceevee/index.html ./build/index.html
