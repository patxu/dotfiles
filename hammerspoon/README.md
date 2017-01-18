# Setup
- ## Karabiner-Elements
  - download [Karabiner-Elements](https://github.com/tekezo/Karabiner-Elements)
  - Use Karabiner-Elements to remap caps_lock to F18.

    <img src="imgs/karabiner-elements.png" width="800px">

- ## System Preferences
  - remap caps_lock to no action
    <img src="imgs/sys-prefs.png" width="800px">

- ## Hammerspoon
  - download [Hammerspoon](http://www.hammerspoon.org/)
  - create a directory `~/.hammerspoon`
    - `mkdir ~/.hammerspoon`
  - create a symlink for `init.lua`
    - ``ln -s `pwd`/init.lua ~/.hammerspoon/init.lua``
