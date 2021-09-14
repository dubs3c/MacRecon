#!/bin/zsh

FOLDER="$HOME/Library/Application Support/Firefox/Profiles/s360ernl.default-release/cookies.sqlite";

sqlite3 -line $FOLDER "select name, host, path, value from moz_cookies;"