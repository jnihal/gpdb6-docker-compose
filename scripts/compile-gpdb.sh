#! /bin/bash

cd /gpdb-src
./configure --disable-orca --disable-gpcloud --with-libxml --with-python --with-perl --enable-mapreduce --enable-debug --without-zstd
make -s
