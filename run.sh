#!/bin/bash

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

start_services.sh

python manage.py runserver 0.0.0.0:8080