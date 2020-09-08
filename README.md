# Lockout
This is a project I'm working on to automate
locking myself out of my computer on a schedule
for self-control purposes.

# Installation Instructions for test user
* Create a new user of username `test` on your mac
* install the shell script
  * `mkdir /Users/Shared/lockout`
  * `sudo cp lockout.sh /Users/Shared/lockout/lockout.sh`
* Setup your lockout/unlock times. Edit `com.jooi.lockout.plist` to adjust 
the <dict> values under <key>StartCalendarInterval</key> 
* Create launch daemons that run the scripts at desired lock out/unlock times:
  * `sudo cp com.jooi.lockout.plist /Library/LaunchDaemons/`
  * `sudo cp com.jooi.unlock.plist /Library/LaunchDaemons/`
* Creat a launch agent that returns the user to the lock screen 
so they can't continue after the account is disabled
  * `sudo cp com.jooi.lockscreen.plist /Library/LaunchAgents/`

NOTE: You'll probably have to mess with the permissions
for the plists a lot to make it work.