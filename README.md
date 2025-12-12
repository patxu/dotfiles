# Settings

My personal settings for a new computer.

1. clone this repo
2. (optional) within new repo, clone vim repo: `git clone --recursive https://github.com/patxu/.vim.git`

## all systems:
- Chrome  
- Dropbox
- 1Password
  - update hotkey: cmd-\ -> opt-\
- Spotify
  - private listening, announcements
- Notion
- qBitorrent
- Telegram
- Discord
- Steam

## Mac:
- System Preferences
  - General: dark theme
  - Dock: auto-minimize
  - Security & Privacy: require password in 5 seconds
  - Mission Control: disable desktop spaces automatically rearranging
  - Keyboard
    - key delay + repeat: min delay, max repeat speed
    - Autocorrect: off
  - Night shift
  - Hot Corners
    - top right: notifications
    - bottom right: screen saver
- Calendar
  - Set default calendar
  - Turn on timezone support
- Hammerspoon & Karabiner-Elements: see `Hammerspoon/`
- Aerial
- Xcode
- iTerm
    - silence bell
    - use included solarized dark theme
- Rectangle: window drag-to-snap
- Contexts: better alt-tabbing
- Alfred: better spotlight, clipboard history, snippets, but $$$$ :( 
- Fresco: multi-monitor wallpaper creation
- Top Notch: hides the new 14"/16" Macbook notch
- Maccy: Clipboard history (Alfred alternative)
- JRE: https://www.java.com/en/download/
- Proxy Audio Device: `brew install --cask proxy-audio-device`
  - To control volume on devices which MacOS doesn't normally support

## Windows:
- Microsoft PowerToys
  - FancyZones: Window layout manager

## git config
`git config --global credential.helper cache`  
`git config --global credential.helper 'cache --timeout=3600'`  
`git config --global user.name patxu`  
`git config --global user.email patrick.s.xu.17@dartmouth.edu`
