#! /bin/bash
set -exo nounset

rm -rf build
mkdir build
cd build

ARG=
ARG+=' -DCMAKE_C_COMPILER=gcc-5 -DCMAKE_CXX_COMPILER=gcc-5'
#ARG+=' -DCUDA_ARCH="20;30;50"'

cmake .. $ARG
make
