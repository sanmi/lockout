This is a project I'm working on to automate
locking myself out of my computer on a schedule
for self-control purposes.

Create launch daemons that run the scripts
at desired lock out/unlock times:
Add 'com.jooi.lockout.plist' to /Library/LaunchDaemons/
Add 'com.jooi.unlock.plist' to /Library/LaunchDaemons/
Adjust the <dict> values under <key>StartCalendarInterval</key>
to change the lockout/unlock times.

Creat a launch agent that returns the user to the lock screen
so they can't continue after the account is disabled:
Add 'com.jooi.lockscreen.plist' to /Library/LaunchAgents/

You'll probably have to mess with the permissions
for the plists a lot to make it work.