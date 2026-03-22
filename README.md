# <img src='icon.png' width='45' align='center' alt='LookAway Alfred Workflow icon'> LookAway Alfred Workflow

[![GitHub Release](https://img.shields.io/github/v/release/hi-upchen/alfred-lookaway)](https://github.com/hi-upchen/alfred-lookaway/releases/latest)
[![GitHub Downloads](https://img.shields.io/github/downloads/hi-upchen/alfred-lookaway/total)](https://github.com/hi-upchen/alfred-lookaway/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

An [Alfred](https://www.alfredapp.com/) workflow to control [LookAway](https://lookaway.app), the break reminder app for Mac. Start breaks, postpone them, pause reminders, or adjust your 20-20-20 schedule — all from your keyboard, without touching the mouse.

LookAway helps reduce eye strain and digital fatigue by scheduling screen breaks on macOS. This workflow lets you manage it entirely through Alfred so you never have to break your flow.

![Screenshot](images/screenshot.png)

## Features

- **Start or skip breaks** — trigger your next micro break or force a long break instantly
- **Postpone breaks** — delay the next reminder by 5, 10, or 30 minutes when you're in the zone
- **Pause reminders** — temporarily disable break reminders for 1–12 hours during meetings or deep work
- **Resume anytime** — unpause reminders with a single command
- **Open settings** — jump to LookAway preferences without searching for the menu bar icon
- **Multiple keywords** — invoke with `la`, `look`, or `lookaway` for quick access
- **Fuzzy filtering** — type `la pause` or `look start` to instantly filter commands

## Installation

1. Download the [latest release](https://github.com/hi-upchen/alfred-lookaway/releases/latest/download/LookAway.alfredworkflow) (`.alfredworkflow` file)
2. Double-click to install in Alfred

**Requirements:**

- [LookAway](https://lookaway.app) v1.11.3 or later
- [Alfred 5](https://www.alfredapp.com/) with Powerpack

## Usage

Type any of these keywords in Alfred, then select a command:

| Keyword | Description |
|---------|-------------|
| `la` | Short alias |
| `look` | Medium alias |
| `lookaway` | Full name |

Start typing after the keyword to filter (e.g., `la pause` shows only pause options).

## Commands

| Command | Description |
|---------|-------------|
| **Start Break** | Trigger the next scheduled screen break |
| **Start Long Break** | Force a long break right now |
| **Postpone 5 min** | Delay the next break by 5 minutes |
| **Postpone 10 min** | Delay the next break by 10 minutes |
| **Postpone 30 min** | Delay the next break by 30 minutes |
| **Pause 1 hour** | Pause break reminders for 1 hour |
| **Pause 3 hours** | Pause break reminders for 3 hours |
| **Pause 6 hours** | Pause break reminders for 6 hours |
| **Pause 12 hours** | Pause break reminders for 12 hours |
| **Resume** | Resume break reminders |
| **Settings** | Open LookAway preferences |

## How It Works

The workflow communicates with LookAway via AppleScript. Each command sends a message to the LookAway app (e.g., `tell application "LookAway" to start next break`) and displays a notification confirming the action.

## Related

- [LookAway](https://lookaway.app) — the break reminder app for Mac (supports 20-20-20 rule, posture reminders, and smart pause)
- [Alfred](https://www.alfredapp.com/) — productivity app for macOS

## License

[MIT](LICENSE)
