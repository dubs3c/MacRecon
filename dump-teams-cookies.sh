#!/bin/bash

sqlite3 -line "$HOME/Library/Application Support/Microsoft/Teams/Cookies" "select name, value from cookies where name like '%auth%';"