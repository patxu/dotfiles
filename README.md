# Settings

My personal settings for a new computer.

1. clone this repo
2. (optional) within new repo, clone vim repo: `git clone --recursive https://github.com/patxu/.vim.git`

## all systems:
- Chrome  
- Dropbox
- 1password
  - update hotkey: cmd-\ -> opt-\
- Spotify
  - private listening, announcements
- Atom
  - Sync settings: https://atom.io/packages/sync-settings
    - Gist: https://gist.github.com/patxu/3686eecbcfe327fad30eff56e24ec819

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
- Hammerspoon & Karabiner-Elements: see `Hammerspoon/`
- Aerial
- Xcode
- iTerm
    - silence bell
    - use included solarized dark theme
- Rectangle: window drag-to-snap
- Contexts: better alt-tabbing
- Divvy: window resize-to-grid
- Alfred: better spotlight, clipboard history
- Stay: restore windows as displays are reconnected (testing)
- Other
  - Disable Character Accents: https://www.tekrevue.com/tip/how-to-disable-the-character-accent-menu-in-os-x-mountain-lion/

## Windows:
- Dexpot (only dexgrid plugin)
- Launchy  
- Github for Windows  
- Sharp Keys (for Bootcamp)

## git config
`git config --global credential.helper cache`  
`git config --global credential.helper 'cache --timeout=3600'`  
`git config --global user.name patxu`  
`git config --global user.email patrick.s.xu.17@dartmouth.edu`  
