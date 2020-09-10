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
* Create the lockout launch daemon:
  * `sudo cp com.jooi.lockout.plist /Library/LaunchDaemons/`
  * `sudo launchctl load /Library/LaunchDaemons/com.jooi.lockout.plist`
* Create the unlock launch daemon:
  * `sudo cp com.jooi.unlock.plist /Library/LaunchDaemons/`
  * `sudo launchctl load /Library/LaunchDaemons/com.jooi.unlock.plist`
* Creat a launch agent that returns the user to the lock screen 
so they can't continue after the account is disabled
  * `sudo cp com.jooi.lockscreen.plist /Library/LaunchAgents/`

# Adjusting the schedule
If you ever want to change the lockout / unlock schedule:
* Setup your lockout/unlock times. Edit `com.jooi.lockout.plist` to adjust 
the <dict> values under <key>StartCalendarInterval</key> 
* Reload the lockout launch daemon:
  * `sudo cp com.jooi.lockout.plist /Library/LaunchDaemons/`
  * `sudo launchctl unload /Library/LaunchDaemons/com.jooi.lockout.plist`
  * `sudo launchctl load /Library/LaunchDaemons/com.jooi.lockout.plist`
* Reload the unlock launch daemon:
  * `sudo cp com.jooi.unlock.plist /Library/LaunchDaemons/`
  * `sudo launchctl unload /Library/LaunchDaemons/com.jooi.unlock.plist`
  * `sudo launchctl load /Library/LaunchDaemons/com.jooi.unlock.plist`
