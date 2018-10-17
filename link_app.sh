#!/bin/sh

# Copyright (c) 2018-2019, Fares Abdullah, all rights reserved.

# Adjust to your Symfony app root
APP_PATH=../property_manager_app

if [ ! -e $APP_PATH ]
then
	echo "Error in link_app.sh: change APP_PATH variable to point to your Symfony app"
	exit 1
fi

if [ ! -e app ]
then
	ln -s $APP_PATH app
fi
