#!/bin/bash

command="$1"

run() {
    if osascript -e "$1" 2>/dev/null; then
        echo "$2"
    else
        echo "Failed - is LookAway running?"
    fi
}

case "$command" in
    start_break)
        run 'tell application "LookAway" to start next break' "Break started"
        ;;
    start_long)
        run 'tell application "LookAway" to start long break' "Long break started"
        ;;
    postpone_5)
        run 'tell application "LookAway" to postpone break by 300' "Postponed 5 minutes"
        ;;
    postpone_10)
        run 'tell application "LookAway" to postpone break by 600' "Postponed 10 minutes"
        ;;
    postpone_30)
        run 'tell application "LookAway" to postpone break by 1800' "Postponed 30 minutes"
        ;;
    pause_60)
        run 'tell application "LookAway" to pause temporarily for 3600' "Paused for 1 hour"
        ;;
    pause_180)
        run 'tell application "LookAway" to pause temporarily for 10800' "Paused for 3 hours"
        ;;
    pause_360)
        run 'tell application "LookAway" to pause temporarily for 21600' "Paused for 6 hours"
        ;;
    pause_720)
        run 'tell application "LookAway" to pause temporarily for 43200' "Paused for 12 hours"
        ;;
    resume)
        run 'tell application "LookAway" to resume' "Reminders resumed"
        ;;
    settings)
        run 'tell application "LookAway" to open settings' "Settings opened"
        ;;
    *)
        echo "Unknown command: $command"
        ;;
esac
