-----------------------------------------------
-- Hyper Key Setup
-----------------------------------------------

-- A global variable for the Hyper Mode
hyperK = hs.hotkey.modal.new({}, "F17")
hyper = {"cmd", "alt", "shift", "ctrl"}
hyperK:bind({}, 'm', nil, function() hs.eventtap.keyStroke(hyper, 'm') end)

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
hs.window.animationDuration = 0
hs.grid.setMargins('0, 0')

-- sequential binding; e.g. Hyper-w h to move to left half of screen
-- sequential binding for w
hyperA = hs.hotkey.modal.new({}, "F16")
pressedW = function() hyperA:enter() end
releasedW = function() end
hyperK:bind({}, 'a', nil, pressedW, releasedW)

-- hyper h for left one half window
windowH = function()
  push(0,0,0.5,1)
  hyperA:exit()
end
hyperA:bind({}, 'h', nil, windowH)

-- hyper l for right one half window
windowL = function()
  push(0.5,0,0.5,1)
  hyperA:exit();
end
hyperA:bind({}, 'l', nil, windowL)

-- hyper k for top one half window
windowK = function()
  push(0,0,1,0.5)
  hyperA:exit()
end
hyperA:bind({}, 'k', nil, windowK)

-- hyper j for bottom one half window
windowJ = function()
  push(0,0.5,1,0.5)
  hyperA:exit()
end
hyperA:bind({}, 'j', nil, windowJ)

-- hyper f for maximize window
windowF = function()
  push(0,0,1,1)
  hyperA:exit()
end
hyperA:bind({}, 'f', nil, windowF)

-- hyper r for fullscreen toggle
windowR = function()
  hs.window.focusedWindow():toggleFullScreen()
  hyperA:exit()
end
hyperA:bind({}, 'r', nil, windowR)

-- hyper q for top left one quarter window
windowQ = function()
  push(0,0,0.5,0.5)
  hyperA:exit()
end
hyperA:bind({}, 'q', nil, windowQ)

-- hyper e for top right one quarter window
windowE = function()
  push(0.5,0,0.5,0.5)
  hyperA:exit()
end
hyperA:bind({}, 'e', nil, windowE)

-- hyper c for bottom left one quarter window
windowC = function()
  push(0.5,0.5,0.5,0.5)
  hyperA:exit()
end
hyperA:bind({}, 'c', nil, windowC)

-- hyper z for bottom right one quarter window
windowZ = function()
  push(0,0.5,0.5,0.5)
  hyperA:exit()
end
hyperA:bind({}, 'z', nil, windowZ)

-- hyper g for left 1/3 window
windowG = function()
  push(0,0,(1/3),1)
  hyperA:exit()
end
hyperA:bind({}, 'g', nil, windowG)

-- hyper ; for right 2/3 window
windowSemi = function()
  push((1/3),0,(2/3),1)
  hyperA:exit()
end
hyperA:bind({}, ';', nil, windowSemi)

-- hyper w to push window to next monitor
-- windowPush = function()
--   hs.gridpushwindownextscreen()
--   hyperA:exit()
-- end
-- hyperA:bind({}, 'n', nil, windowPush)

-- function()
--   local win = hs.window.focusedWindow()
--   if (win) then
--     win:moveToScreen(hs.screen.get(second_monitor))
--   end
-- end)

-- utility function for moving windows around
function push(x, y, w, h)
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w*x)
  f.y = max.y + (max.h*y)
  f.w = max.w*w
  f.h = max.h*h
  win:setFrame(f)
end

-----------------------------------------------
-- window focusing
-----------------------------------------------

-- sequential binding for f
hyperF = hs.hotkey.modal.new({}, "F15")
pressedF = function() hyperF:enter() end
releasedF = function() end
hyperK:bind({}, 'f', nil, pressedF, releasedF)

focusWest = function()
  hs.window.focusWindowWest()
  hyperF:exit()
end
hyperF:bind({}, 'h', nil, focusWest)

focusEast = function()
  hs.window.focusWindowEast()
  hyperF:exit()
end
hyperF:bind({}, 'l', nil, focusEast)

focusNorth = function()
  hs.window.focusWindowNorth()
  hyperF:exit()
end
hyperF:bind({}, 'k', nil, focusNorth)

focusSouth = function()
  hs.window.focusWindowSouth()
  hyperF:exit()
end
hyperF:bind({}, 'j', nil, focusSouth)

-----------------------------------------------
-- moving windows to other screens
-----------------------------------------------

-- sequential binding for m
hyperM = hs.hotkey.modal.new({}, "F14")
pressedM = function() hyperM:enter() end
releasedM = function() end
hyperK:bind({}, 'm', nil, pressedM, releasedM)

throwWest = function()
  local win = hs.window.focusedWindow()
  win:moveOneScreenWest()
  hyperM:exit()
end
hyperM:bind({}, 'h', nil, throwWest)

throwEast = function()
  local win = hs.window.focusedWindow()
  win:moveOneScreenEast()
  hyperM:exit()
end
hyperM:bind({}, 'l', nil, throwEast)

throwNorth = function()
  local win = hs.window.focusedWindow()
  win:moveOneScreenNorth()
  hyperM:exit()
end
hyperM:bind({}, 'k', nil, throwNorth)

throwSouth = function()
  local win = hs.window.focusedWindow()
  win:moveOneScreenSouth()
  hyperM:exit()
end
hyperM:bind({}, 'j', nil, throwSouth)

-----------------------------------------------
-- some nice system/program utilities
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

hs.pathwatcher.new(os.getenv("HOME") .. "/code/dotfiles/hammerspoon/init.lua", reload_config):start()
hs.alert.show("Config loaded")
