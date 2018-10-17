#!/bin/bash

pushd ../php-src && \
./buildconf && ./configure --with-mysqli --enable-fpm --with-openssl --enable-exif --enable-intl --enable-mbstring --with-zlib --enable-pcntl --with-curl --with-pdo-mysql --enable-zip && make && make install && \
popd && \
rm -rf ../php-src && \
exit 0

exit 1
