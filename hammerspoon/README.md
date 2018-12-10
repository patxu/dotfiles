## Overview
- ### Features
  - **quickly** rearrange your windows – no more dragging!
  - move windows to other monitors - again, no more dragging
  - focus windows next to the current one – this one is still of arguable utility and I'm still testing it

- ### Changes to Caps Lock
  - removes the standard caps lock key capabilities, which means you'll have to use shift to capitalize letters
  - caps lock becomes both a new modifier key as well as an alternate escape key

- ### General Usage
  - **tap** caps lock to use the escape character – I'm a Vim user so this is great! even if you don't use Vim, having this set probably won't bother you
  - **hold down** caps lock with the varying modifiers I list below for useful functionality
    - note: a lot of these shortcuts are inspired from Vim (e.g. "h" to represent "left")
    - on notation: `caps-w h` means hold down caps, press and release w, press and release h

## Hotkeys
the supported hotkeys, grouped by action type

#### 🐯 Window Arrangement
these are by far the most used, so they're also the most accessible
- `caps-h` – move window to left half of screen
- `caps-j` – bottom half
- `caps-k` – top half
- `caps-l` – right half
<br><br>
- `caps-q` – top left quadrant
- `caps-e` – top right
- `caps-z` – bottom left
- `caps-c` – bottom right
<br><br>
- `caps-f` – maximize
- `caps-r` – full screen
<br><br>
- `caps-g` – left 1/3 of the screen
- `caps-;` – right 2/3

#### 🐙 Window Switching `(caps-s)`
- `caps-s-h` – focus the window to the left
- `caps-s-j` – bottom
- `caps-s-k` – up
- `caps-s-l` – right

#### 🌟 Window Moving `(caps-m)`
- `caps-m-h` – move window to the monitor to the west
- `caps-m-j` – south
- `caps-m-k` – north
- `caps-m-l` – east

#### 🐷 System/Program Utilities
- `caps-t` – view the date and time
- `caps-p` – see what's playing on Spotify

<br>
do you have a task you do frequently that you think should be automated? let me know!

## Setup
- ### System Preferences
  1. Keyboard -> Modifier keys: remap caps lock to no action
    <img src="imgs/sys-prefs.png" width="800px">

- ### Karabiner-Elements
  1. download [Karabiner-Elements](https://github.com/tekezo/Karabiner-Elements)
  1. Use Karabiner-Elements to remap caps_lock to f18.
    <br>
    <img src="imgs/karabiner-elements.png" width="800px">

- ### Hammerspoon
  1. download [Hammerspoon](http://www.hammerspoon.org/) or install via brew
    - `brew cask install hammerspoon`
    - "Launch Hammerspoon on login"
    - Uncheck "Show dock/menu icon"
  1. create a [symlink](https://en.wikipedia.org/wiki/Symbolic_link) for `init.lua`
    - ``ln -s `pwd`/init.lua ~/.hammerspoon/init.lua``
  1. enable Hammerspoon in System Prefs -> Accessibilty
