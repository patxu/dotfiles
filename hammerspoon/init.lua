-----------------------------------------------
-- Setup
-----------------------------------------------

-- A global variable for the Hyper Mode
hyperK = hs.hotkey.modal.new({}, "F17")
hyper = {"cmd", "alt", "shift", "ctrl"}
hyperK:bind({}, 'm', nil, function() hs.eventtap.keyStroke(hyper, 'm') end)

-- sequential bindings; e.g. Hyper-w h to move to left half of screen
hyperW = hs.hotkey.modal.new({}, "F16")
pressedW = function() hyperW:enter() end
releasedW = function() end
hyperK:bind({}, 'w', nil, pressedW, releasedW)

-- Enter Hyper Mode when F18 (Hyper/Capslock) is pressed
pressedF18 = function()
  hyperK.triggered = false
  hyperK:enter()
end

-- Leave Hyper Mode when F18 (Hyper/Capslock) is pressed,
-- send ESCAPE if no other keys are pressed.
releasedF18 = function()
  hyperK:exit()
  if not hyperK.triggered then
    hs.eventtap.keyStroke({}, 'ESCAPE')
  end
end

-- Bind the Hyper key
f18 = hs.hotkey.bind({}, 'F18', pressedF18, releasedF18)

-----------------------------------------------
-- Window arrangement utilitites
-----------------------------------------------

-- hyper h for left one half window
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

  hyperW:exit()
end
hyperW:bind({}, 'h', nil, windowH)

-- hyper l for right one half window
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

  hyperW:exit();
end
hyperW:bind({}, 'l', nil, windowL)

-- hyper k for top one half window
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

  hyperW:exit()
end
hyperW:bind({}, 'k', nil, windowK)

-- hyper j for bottom one half window
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

  hyperW:exit()
end
hyperW:bind({}, 'j', nil, windowJ)

-- hyper f for maximize window
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

  hyperW:exit()
end
hyperW:bind({}, 'f', nil, windowF)

-- hyper r for fullscreen toggle
windowR = function()
  hs.window.focusedWindow():toggleFullScreen()

  hyperW:exit()
end
hyperW:bind({}, 'r', nil, windowR)

-- hyper q for top left one quarter window
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

  hyperW:exit()
end
hyperW:bind({}, 'q', nil, windowQ)

-- hyper e for top right one quarter window
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

  hyperW:exit()
end
hyperW:bind({}, 'e', nil, windowE)

-- hyper c for bottom left one quarter window
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

  hyperW:exit()
end
hyperW:bind({}, 'c', nil, windowC)

-- hyper z for bottom right one quarter window
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

  hyperW:exit()
end
hyperW:bind({}, 'z', nil, windowZ)

-- hyper g for left 1/3 window
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

  hyperW:exit()
end
hyperW:bind({}, 'g', nil, windowG)

-- hyper ; for right 2/3 window
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

  hyperW:exit()
end
hyperW:bind({}, ';', nil, windowSemi)

-- hyper w to push window to next monitor
windowPush = function()
  hs.gridpushwindownextscreen()
  hyperW:exit()
end
hyperW:bind({}, 'w', nil, windowPush)


-----------------------------------------------
-- some nice system utilities
-----------------------------------------------

-- Hyper p to display the current spotify track
displayCurrentTrack = function()
  hs.spotify.displayCurrentTrack()
  hyperK:exit()
end
hyperK:bind({}, 'p', nil, displayCurrentTrack)

-- Hyper t to display the current time
showTime = function()
  hs.alert.show(os.date("%A %b %d, %Y - %I:%M%p"), 2)
  hyperK:exit()
end
hyperK:bind({}, 't', nil, showTime)

-----------------------------------------------
-- Reload config on write
-----------------------------------------------
function reload_config(files)
  hs.reload()
end

hs.pathwatcher.new(os.getenv("HOME") .. "/code/dotfiles/hammerspoon/", reload_config):start()
hs.alert.show("Config loaded")
