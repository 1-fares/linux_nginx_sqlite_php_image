#!/bin/sh

set -x

if [ "$(id -u)" != "0" ]; then
	echo "This script must be run as root" 1>&2
	exit 1
fi

apt-get update && \
apt-get install \
	bash \
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
	libcurl4-openssl-dev \
	libssl-dev \
	pkg-config \
	zlib1g-dev \
	libzip-dev \
	g++ \
	-y \
	&& \
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add - && \
add-apt-repository \
	"deb [arch=amd64] https://download.docker.com/linux/debian \
	$(lsb_release -cs) \
	stable" && \
curl -fsSL https://packages.sury.org/php/apt.gpg | sudo apt-key add - && \
add-apt-repository \
	"deb https://packages.sury.org/php/ \
	$(lsb_release -cs) \
	main" && \
apt-get update && \
apt-get install docker-ce php7.2 -y && \
exit 0

exit 1
