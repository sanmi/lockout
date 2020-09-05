#!/bin/bash

# set variable for LOGIN_NAME
# LOGIN_NAME = <desired username here>

## disable the user
# replace 'test' with LOGIN_NAME
pwpolicy -u test disableuser

## kick the user out
# replace 'test' with LOGIN_NAME
# the following launches an agent that runs
# "/System/Library/CoreServices/Menu Extras/User.menu/Contents/Resources/CGSession" -suspend
# redurning the user to the lock screen
launchctl kickstart gui/$(id -u test)/com.jooi.lockscreen
# Alternatively, you could use

# pmset displaysleepnow

# to sleep the computer.

# It doesn't lock out the user unless you enable

# System Preferences > Security & Privacy > General:
# Require password immediately after sleep or screen saver begins

# unlock.sh re-enables the user account