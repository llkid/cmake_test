#!/bin/bash

E_NOARGS=65

if [ -z "$1" ]; then
  echo "Usage: `basename $0` -[number]"
  exit $E_NOARGS
fi


echo "Build the project add run target execute file."

cmake -DUSE_MYMATH=ON .
cmake ../cmake_test/
cmake --build .
cmake --install .
ctest -C Debug -VV

echo
echo "Build target success, now run the cmake demo."
echo

echo "./Tutorial $1"

./Tutorial $1
exit 0
