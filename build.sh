#! /bin/bash
set -exo nounset

rm -rf build
mkdir build
cd build
cmake .. -DCMAKE_C_COMPILER=gcc-6 -DCMAKE_CXX_COMPILER=gcc-6
make
