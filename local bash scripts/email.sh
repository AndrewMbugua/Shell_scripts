#!/bin/bash


DBLIST=$(sh ./listdb | tail -n +2)
select DB in $DBLIST
do
echo Initializing database: $DB
mysql -u user -p $DB <myinit.sql
done
