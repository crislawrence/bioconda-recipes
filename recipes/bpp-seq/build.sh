#!/bin/bash

mkdir build && pushd build
cmake -DCMAKE_INSTALL_PREFIX=${PREFIX} -DCMAKE_PREFIX_PATH=${PREFIX} -DCMAKE_INSTALL_RPATH:STRING=${PREFIX}/lib -DCMAKE_BUILD_WITH_INSTALL_RPATH=TRUE -DCMAKE_INSTALL_LIBDIR=${PREFIX}/lib ..

make -j 4
make install
