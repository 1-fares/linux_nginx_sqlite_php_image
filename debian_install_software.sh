#!/bin/sh

set -x

if [ "$(id -u)" != "0" ]; then
	echo "This script must be run as root" 1>&2
	exit 1
fi

apt-get update && \
apt-get install \
	apt-transport-https \
	ca-certificates \
	curl \
	gnupg2 \
	software-properties-common \
	git \
	autoconf \
	bison \
	libxml2-dev \
	libsqlite3-dev \
	-y \
	&& \
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add - && \
add-apt-repository \
	"deb [arch=amd64] https://download.docker.com/linux/debian \
	$(lsb_release -cs) \
	stable" && \
apt-get update && \
apt-get install docker-ce -y && \
git clone https://github.com/php/php-src.git ../php-src &&\
pushd ../php-src && \
./buildconf && ./configure && make && make install && \
popd && \
rm -rf ../php-src

