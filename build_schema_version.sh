#!/bin/bash

[ -f environment.conf ] && $(cat environment.conf | ( while read E; do echo "export $E"; done ))

if [ -z "$APPNAME" ]
then
    echo "Set the APPNAME and MYSQL environment first (edit environment.conf)"
    exit
fi

DBI="dbi:mysql:database=${MYSQL_DATABASE};host=${MYSQL_HOST};user=${MYSQL_USER};password=${MYSQL_PASSWORD}"

./dh.pl -Ilib --schema DBwithUTF8::Schema -c "$DBI" -o $PWD/ddl $*
