#!/bin/bash

# Saves a mysql dump of my alpha-vantage mysql schema 
# Currently running as a daily cronjob

TODAY=$(date "+%Y-%m-%d")
PATHNAME=~/dumps/alphavantage/
FILENAME=alphavantage-dump-$TODAY.sql

echo "Starting mysqldump for alphavantage full schema..."

mysqldump -u root alpha-vantage > $PATHNAME$FILENAME

echo "Dump of $FILENAME complete!"

