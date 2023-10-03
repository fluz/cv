#!/bin/bash

root_path="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
# echo ${root_path}

# generate cv view's
./gradlew tasks cvAll

# copy assets to build file
cp -r ${root_path}/src/views/assets ${root_path}/build/assets

# copy DevResume view as default view
cp ${root_path}/build/DevResume/index.html ${root_path}/build/index.html

# fix the correct path for the links
sed -i 's|\.\./|\./|g' ${root_path}/build/index.html
