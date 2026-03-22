# <img src='icon.png' width='45' align='center' alt='LookAway Alfred Workflow icon'> LookAway Alfred Workflow — Control Mac Break Reminders from Alfred

[![GitHub Release](https://img.shields.io/github/v/release/hi-upchen/alfred-lookaway)](https://github.com/hi-upchen/alfred-lookaway/releases/latest)
[![GitHub Downloads](https://img.shields.io/github/downloads/hi-upchen/alfred-lookaway/total)](https://github.com/hi-upchen/alfred-lookaway/releases)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

An [Alfred](https://www.alfredapp.com/) workflow to control [LookAway](https://lookaway.app), the break reminder app for Mac. Start breaks, postpone them, pause reminders, or manage your [20-20-20 rule](https://www.aao.org/eye-health/tips-prevention/computer-usage) schedule — all from your keyboard, without touching the mouse or menu bar.

If you use LookAway to prevent eye strain and reduce screen fatigue on macOS, this workflow lets you manage it entirely through Alfred so you stay in flow.

![LookAway Alfred Workflow screenshot showing available commands](images/screenshot.png)

## Why Use This?

LookAway is the best break reminder app for Mac — it schedules micro breaks and long breaks to prevent eye strain, reminds you to blink and fix your posture, and supports the 20-20-20 rule. But switching to the menu bar to postpone or pause a break interrupts your workflow.

This Alfred workflow solves that. Type `la` and you have full control over your break schedule without lifting your hands off the keyboard.

## Features

- **Start or skip breaks** — trigger your next micro break or force a long break instantly
- **Postpone breaks** — delay the next reminder by 5, 10, or 30 minutes when you're in deep focus
- **Pause reminders** — temporarily disable break notifications for 1–12 hours during meetings, presentations, or deep work sessions
- **Resume anytime** — unpause break reminders with a single command
- **Open settings** — jump straight to LookAway preferences without hunting for the menu bar icon
- **Multiple keywords** — invoke with `la`, `look`, or `lookaway`
- **Fuzzy filtering** — type `la pause` or `look start` to instantly narrow the command list

## Installation

1. Download [`LookAway.alfredworkflow`](https://github.com/hi-upchen/alfred-lookaway/releases/latest/download/LookAway.alfredworkflow) from the latest release
2. Double-click the file to install it in Alfred

### Requirements

- macOS
- [LookAway](https://lookaway.app) v1.11.3 or later
- [Alfred 5](https://www.alfredapp.com/) with Powerpack

## Usage

Open Alfred and type any of these keywords, then pick a command:

| Keyword | Description |
|---------|-------------|
| `la` | Short alias (fastest) |
| `look` | Medium alias |
| `lookaway` | Full name |

Type after the keyword to filter. For example, `la pause` shows only the pause options, `la start` shows only break start commands.

## Commands

| Command | What It Does |
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
| **Resume** | Resume break reminders after pausing |
| **Settings** | Open LookAway preferences window |

## How It Works

The workflow talks to LookAway via AppleScript. Each command sends a message like:

```applescript
tell application "LookAway" to start next break
tell application "LookAway" to postpone break by 300
tell application "LookAway" to pause temporarily for 3600
```

A macOS notification confirms every action. If LookAway isn't running, you'll see a "Failed — is LookAway running?" message.

## Troubleshooting

| Problem | Solution |
|---------|----------|
| "Failed — is LookAway running?" | Make sure LookAway is open. Launch it from `/Applications` or Spotlight. |
| Commands don't appear | Verify Alfred 5 Powerpack is active. Free Alfred doesn't support workflows. |
| Workflow doesn't install | Right-click the `.alfredworkflow` file → Open With → Alfred. |
| Break doesn't start | Update LookAway to v1.11.3 or later — older versions lack AppleScript support. |

## Related

- [LookAway](https://lookaway.app) — break reminder app for Mac with 20-20-20 rule, posture reminders, blink reminders, and smart pause
- [Alfred](https://www.alfredapp.com/) — the productivity app for macOS
- [Alfred Forum](https://www.alfredforum.com/) — share and discover Alfred workflows

## License

[MIT](LICENSE)
