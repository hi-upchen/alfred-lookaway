#!/bin/bash

cat << 'EOF'
{
  "items": [
    {
      "uid": "start_break",
      "title": "\u25b6\ufe0f Start Break",
      "subtitle": "Trigger next scheduled break",
      "arg": "start_break",
      "match": "start break next"
    },
    {
      "uid": "start_long",
      "title": "\u23ed\ufe0f Start Long Break",
      "subtitle": "Force a long break now",
      "arg": "start_long",
      "match": "start long break force"
    },
    {
      "uid": "postpone_5",
      "title": "\u23e9 Postpone 5 min",
      "subtitle": "Delay next break by 5 minutes",
      "arg": "postpone_5",
      "match": "postpone delay 5 minutes"
    },
    {
      "uid": "postpone_10",
      "title": "\u23e9 Postpone 10 min",
      "subtitle": "Delay next break by 10 minutes",
      "arg": "postpone_10",
      "match": "postpone delay 10 minutes"
    },
    {
      "uid": "postpone_30",
      "title": "\u23e9 Postpone 30 min",
      "subtitle": "Delay next break by 30 minutes",
      "arg": "postpone_30",
      "match": "postpone delay 30 minutes"
    },
    {
      "uid": "pause_60",
      "title": "\u23f8\ufe0f Pause 1 hour",
      "subtitle": "Pause reminders for 1 hour",
      "arg": "pause_60",
      "match": "pause 1 hour 60"
    },
    {
      "uid": "pause_180",
      "title": "\u23f8\ufe0f Pause 3 hours",
      "subtitle": "Pause reminders for 3 hours",
      "arg": "pause_180",
      "match": "pause 3 hours 180"
    },
    {
      "uid": "pause_360",
      "title": "\u23f8\ufe0f Pause 6 hours",
      "subtitle": "Pause reminders for 6 hours",
      "arg": "pause_360",
      "match": "pause 6 hours 360"
    },
    {
      "uid": "pause_720",
      "title": "\u23f8\ufe0f Pause 12 hours",
      "subtitle": "Pause reminders for 12 hours",
      "arg": "pause_720",
      "match": "pause 12 hours 720"
    },
    {
      "uid": "resume",
      "title": "\u25b6\ufe0f Resume",
      "subtitle": "Resume reminders",
      "arg": "resume",
      "match": "resume start unpause"
    },
    {
      "uid": "settings",
      "title": "\u2699\ufe0f Settings",
      "subtitle": "Open LookAway settings",
      "arg": "settings",
      "match": "settings preferences config"
    }
  ]
}
EOF
