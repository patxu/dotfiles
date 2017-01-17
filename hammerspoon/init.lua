-----------------------------------------------
-- Setup
-----------------------------------------------

hyper = {"cmd", "alt", "shift", "ctrl"}

-- A global variable for the Hyper Mode
k = hs.hotkey.modal.new({}, "F17")
k:bind({}, 'm', nil, function() hs.eventtap.keyStroke(hyper, 'm') end)

-- sequential bindings; e.g. Hyper-w h to move to left half of screen
w = hs.hotkey.modal.new({}, "F16")
pressedW = function() w:enter() end
releasedW = function() end
k:bind({}, 'w', nil, pressedW, releasedW)

-----------------------------------------------
-- Window Arrangement
-----------------------------------------------

-- hyper-h for left one half window
windowH = function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)

  w:exit()
end
w:bind({}, 'h', nil, windowH)

-- hyper-l for right one half window
windowL = function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f)

  w:exit();
end
w:bind({}, 'l', nil, windowL)

-- hyper-k for top one half window
windowK = function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h / 2
  win:setFrame(f)

  w:exit()
end
w:bind({}, 'k', nil, windowK)

-- hyper-j for bottom one half window
windowJ = function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y + (max.h / 2)
  f.w = max.w
  f.h = max.h / 2
  win:setFrame(f)

  w:exit()
end
w:bind({}, 'j', nil, windowJ)

-- hyper-f for maximize window
windowF = function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w
  f.h = max.h
  win:setFrame(f)

  w:exit()
end
w:bind({}, 'f', nil, windowF)

-- hyper-r for fullscreen toggle
windowR = function()
  hs.window.focusedWindow():toggleFullScreen()

  w:exit()
end
w:bind({}, 'r', nil, windowR)

-- hyper-q for top left one quarter window
windowQ = function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h / 2
  win:setFrame(f)

  w:exit()
end
w:bind({}, 'q', nil, windowE)

-- hyper-e for top right one quarter window
windowE = function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h / 2
  win:setFrame(f)

  w:exit()
end
w:bind({}, 'e', nil, windowE)

-- hyper-c for bottom left one quarter window
windowC = function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y + (max.h / 2)
  f.w = max.w / 2
  f.h = max.h / 2
  win:setFrame(f)

  w:exit()
end
w:bind({}, 'c', nil, windowC)

-- hyper-z for bottom right one quarter window
windowZ = function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y + (max.h / 2)
  f.w = max.w / 2
  f.h = max.h / 2
  win:setFrame(f)

  w:exit()
end
w:bind({}, 'z', nil, windowZ)

-- hyper-g for left 1/3 window
windowG = function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 3
  f.h = max.h

  win:setFrame(f)

  w:exit()
end
w:bind({}, 'g', nil, windowG)

-- hyper-; for right 2/3 window
windowSemi = function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 3)
  f.y = max.y
  f.w = max.w / 3 * 2
  f.h = max.h

  win:setFrame(f)

  w:exit()
end
w:bind({}, ';', nil, windowSemi)

-- hyper-w to push window to next monitor
hs.hotkey.bind(hyper, "w", hs.grid.pushWindowNextScreen)

-----------------------------------------------
-- Reload config on write
-----------------------------------------------

function reload_config(files)
  hs.reload()
end

hs.pathwatcher.new(os.getenv("HOME") .. "/code/dotfiles/hammerspoon/", reload_config):start()
hs.alert.show("Config loaded")

-----------------------------------------------
-- Hyper p to display the current spotify track
-----------------------------------------------

hs.hotkey.bind(hyper, 'p', hs.spotify.displayCurrentTrack)

-----------------------------------------------
-- Hyper t to display the current time
-----------------------------------------------

hs.hotkey.bind(hyper, 't', function() hs.alert.show(os.date("%A %b %d, %Y - %I:%M%p"), 4) end)

-- Enter Hyper Mode when F18 (Hyper/Capslock) is pressed
pressedF18 = function()
  k.triggered = false
  k:enter()
end

-- Leave Hyper Mode when F18 (Hyper/Capslock) is pressed,
-- send ESCAPE if no other keys are pressed.
releasedF18 = function()
  k:exit()
  if not k.triggered then
    hs.eventtap.keyStroke({}, 'ESCAPE')
  end
end

-- Bind the Hyper key
f18 = hs.hotkey.bind({}, 'F18', pressedF18, releasedF18)
