#!/bin/bash

database_file="/data/database.sqlite3"
source_file="/default.database.sqlite3"

if [ ! -f "$database_file" ]; then
    cp "$source_file" "$database_file"
fi

taguette server /config.py