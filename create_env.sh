#!/bin/sh

# Copyright (c) 2018-2019, Fares Abdullah, all rights reserved.

if [ ! -e app ]
then
	echo "Error in create_env.sh: app not found (run link_app.sh?)"
	exit 1
fi

if [ ! -e app/.env ]
then
	if [ -e app/.env.dist ]
	then
		cp app/.env.dist app/.env
	else
		echo "Error in create_env.sh: app/env.dist not found"
		exit 1
	fi
fi

DB_PATH=app/var/data.db
set -x

if [ ! -e $DB_PATH ]
then
	cd app
	php bin/console doctrine:database:create
	php bin/console make:migration
	php bin/console doctrine:migrations:migrate -n
	cd ..
	chmod 777 $DB_PATH
fi
