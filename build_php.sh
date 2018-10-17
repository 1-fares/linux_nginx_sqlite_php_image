#!/bin/bash

pushd ../php-src && \
./buildconf && ./configure && make && make install && \
popd && \
rm -rf ../php-src

