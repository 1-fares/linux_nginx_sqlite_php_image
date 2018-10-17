#!/bin/sh

# Copyright (c) 2018-2019, Fares Abdullah, all rights reserved.

set -x

./link_app.sh && \
	./create_env.sh && \
	docker-compose up
