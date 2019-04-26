#!/bin/bash

set -e

mkdir -p /work/build
cd /work/build

# We need to let CMake to download the required version of boost, otherwise
# CMake Warning at cmake/boost.cmake:266 (MESSAGE):
#  Boost minor version found is 65 we need 59
cmake -DDOWNLOAD_BOOST=1 -DWITH_BOOST=/work/boost ../mysql-server
make -j20 
