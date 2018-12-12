# Settings

My personal settings for a new computer.

1. clone this repo
2. (optional) clone vim repo: `git clone --recursive https://github.com/patxu/.vim.git`

## all systems:
- Chrome  
  - Sync: everything (?)
  - Set up Momentum
- Dropbox
  - sync 1password files first
- 1password
  - update hotkey: cmd-\ -> opt-\
- Spotify
  - private listening, announcements
- Atom
  - Sync settings: https://atom.io/packages/sync-settings
    - Gist: https://gist.github.com/patxu/3686eecbcfe327fad30eff56e24ec819
  - Ondemand: Nuclide ondemand settings

## OSX:
- System Preferences
  - General: dark theme
  - Dock: auto-minimize
  - Security & Privacy: require password in 5 seconds
  - Mission Control: disable desktop spaces automatically rearranging
  - Keyboard
    - key delay + repeat: min delay, max repeat speed
    - Touch bar typing suggestions: off
    - Autocorrect: off
  - Night shift
  - Hot Corners
    - top right: notifications
    - bottom right: screen saver
- Hammerspoon & Karabiner-Elements: see `Hammerspoon/`
- Aerial
  - download all, don't stream, add text
- Xcode
- iTerm
    - silence bell
    - use included solarized dark theme
- Customize touch bar: switch Siri for screen lock
- Messages: sync to iCloud
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
