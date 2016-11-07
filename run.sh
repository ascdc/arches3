#!/bin/bash

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

start_services.sh

if [ ! -f /.db_set ]; then
	python manage.py packages -o install
	
	echo "=> DB Setup Done!"
	touch /.db_set
else
	echo "db already set!"
fi

python manage.py runserver 0.0.0.0:8080