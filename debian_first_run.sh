#!/bin/sh

# Copyright (c) 2018-2019, Fares Abdullah, all rights reserved.

set -x

./debian_install_software.sh && ./run.sh && exit 0

exit 1
