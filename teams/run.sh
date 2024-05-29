#!/bin/bash

# thanks to:
# for pointing me in the right direction for what has to be changed
# https://www.reddit.com/r/chrome/comments/yxzdl8/i_deleted_teams_app_how_to_tell_chrome_to_stop/
# for how to check if chrome is running
# https://unix.stackexchange.com/questions/225873/check-if-process-is-running-mac-os-x-then-execute-code

SERVICE='Google Chrome'

if pgrep -xq -- "${SERVICE}"; then
    echo "Close Google Chrome before running this script"
else
    echo "Removing MS Teams preference for ALL Chrome Profiles"
    echo "⚠️   Use at your own risk. CTRL+C to exit now"
    echo "Will execute in 5 seconds"
    sleep 5
    sed -i -e 's/{"https:\/\/teams.microsoft.com":{"msteams":true}}//' ~/Library/Application\ Support/Google/Chrome/Profile\ */Preferences
    echo "Done, you can reopen Chrome now"
fi
