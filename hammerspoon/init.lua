-----------------------------------------------
-- Hyper Key Setup
-----------------------------------------------

-- A global variable for the Hyper Mode
hyperK = hs.hotkey.modal.new({}, "F17")
hyper = {"cmd", "alt", "shift", "ctrl"}

-- Bind 'm' for hyper-m < > commands
hyperK:bind({}, 't', nil, function()
  hs.eventtap.keyStroke(hyper, 't')
end)

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

-----------------------------------------------
-- Window arrangement utilitites
-----------------------------------------------
hs.window.animationDuration = 0
hs.grid.setMargins('0, 0')

-- hyper h for left one half window
windowH = function()
  push(0,0,0.5,1)
  hyperK.triggered = true
end
hyperK:bind({}, 'h', nil, windowH)

-- hyper l for right one half window
windowL = function()
  push(0.5,0,0.5,1)
  hyperK.triggered = true
end
hyperK:bind({}, 'l', nil, windowL)

-- hyper k for top one half window
windowK = function()
  push(0,0,1,0.5)
  hyperK.triggered = true
end
hyperK:bind({}, 'k', nil, windowK)

-- hyper j for bottom one half window
windowJ = function()
  push(0,0.5,1,0.5)
  hyperK.triggered = true
end
hyperK:bind({}, 'j', nil, windowJ)

-- hyper f for maximize window
windowF = function()
  push(0,0,1,1)
  hyperK.triggered = true
end
hyperK:bind({}, 'f', nil, windowF)

-- hyper r for fullscreen toggle
windowR = function()
  hs.window.focusedWindow():toggleFullScreen()
  hyperK.triggered = true
end
hyperK:bind({}, 'r', nil, windowR)

-- hyper q for top left one quarter window
windowQ = function()
  push(0,0,0.5,0.5)
  hyperK.triggered = true
end
hyperK:bind({}, 'q', nil, windowQ)

-- hyper e for top right one quarter window
windowE = function()
  push(0.5,0,0.5,0.5)
  hyperK.triggered = true
end
hyperK:bind({}, 'e', nil, windowE)

-- hyper c for bottom left one quarter window
windowC = function()
  push(0.5,0.5,0.5,0.5)
  hyperK.triggered = true
end
hyperK:bind({}, 'c', nil, windowC)

-- hyper z for bottom right one quarter window
windowZ = function()
  push(0,0.5,0.5,0.5)
  hyperK.triggered = true
end
hyperK:bind({}, 'z', nil, windowZ)

-- hyper g for left 1/3 window
windowG = function()
  push(0,0,(1/3),1)
  hyperK.triggered = true
end
hyperK:bind({}, 'g', nil, windowG)

-- hyper ; for right 1/3 window
windowSemi = function()
  push((2/3),0,(1/3),1)
  hyperK.triggered = true
end
hyperK:bind({}, ';', nil, windowSemi)

-- hyper ; for right 2/3 window
windowApos = function()
  push((1/3),0,(2/3),1)
  hyperK.triggered = true
end
hyperK:bind({}, 'o', nil, windowApos)

-- hyper i for middle 1/3 window
windowI = function()
  push((1/3),0,(1/3),1)
  hyperK.triggered = true
end
hyperK:bind({}, 'i', nil, windowI)

-- hyper w to push window to next monitor
-- windowPush = function()
--   hs.gridpushwindownextscreen()
-- end
-- hyperK:bind({}, 'n', nil, windowPush)

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
-- window switching
-----------------------------------------------

---- sequential binding for s
--hyperS = hs.hotkey.modal.new({}, "F15")
--pressedF = function() hyperS:enter() end
--releasedF = function() end
--hyperK:bind({}, 's', nil, pressedF, releasedF)
--
--focusWest = function()
  --hs.window.focusWindowWest()
  --hyperK.triggered = true
  --hyperS:exit()
--end
--hyperS:bind({}, 'h', nil, focusWest)
--
--focusEast = function()
  --hs.window.focusWindowEast()
  --hyperK.triggered = true
  --hyperS:exit()
--end
--hyperS:bind({}, 'l', nil, focusEast)
--
--focusNorth = function()
  --hs.window.focusWindowNorth()
  --hyperK.triggered = true
  --hyperS:exit()
--end
--hyperS:bind({}, 'k', nil, focusNorth)
--
--focusSouth = function()
  --hs.window.focusWindowSouth()
  --hyperK.triggered = true
  --hyperS:exit()
--end
--hyperS:bind({}, 'j', nil, focusSouth)

-----------------------------------------------
-- moving windows to other screens
-----------------------------------------------

-- sequential binding for m
hyperM = hs.hotkey.modal.new({}, "F14")
pressedM = function() hyperM:enter() end
releasedM = function() end
hyperK:bind({}, 't', nil, pressedM, releasedM)

throwWest = function()
  local win = hs.window.focusedWindow()
  win:moveOneScreenWest()
  hyperK.triggered = true
  hyperM:exit()
end
hyperM:bind({}, 'h', nil, throwWest)

throwEast = function()
  local win = hs.window.focusedWindow()
  win:moveOneScreenEast()
  hyperK.triggered = true
  hyperM:exit()
end
hyperM:bind({}, 'l', nil, throwEast)

throwNorth = function()
  local win = hs.window.focusedWindow()
  win:moveOneScreenNorth()
  hyperK.triggered = true
  hyperM:exit()
end
hyperM:bind({}, 'k', nil, throwNorth)

throwSouth = function()
  local win = hs.window.focusedWindow()
  win:moveOneScreenSouth()
  hyperK.triggered = true
  hyperM:exit()
end
hyperM:bind({}, 'j', nil, throwSouth)

-----------------------------------------------
-- some nice system/program utilities
-----------------------------------------------

-- Hyper p to display the current spotify track
displayCurrentTrack = function()
  hs.spotify.displayCurrentTrack()
  hyperK.triggered = true
end
hyperK:bind({}, 'p', nil, displayCurrentTrack)

-- Hyper t to display the current time
-- showTime = function()
--   hs.alert.show(os.date("%A %b %d - %I:%M%p"), 2)
--   hyperK.triggered = true
-- end
-- hyperK:bind({}, 't', nil, showTime)

-- Hyper i to show window hints
-- showHints = function()
--   hs.hints.windowHints()
--   hyperK.triggered = true
-- end
-- hyperK:bind({}, 'i', nil, showHints)

f18 = hs.hotkey.bind({}, 'F18', pressedF18, releasedF18)

-- Hyper s to display the current time
sleep = function()
  hs.caffeinate.startScreensaver()
end
hyperK:bind({}, 's', nil, sleep)

-- Hyper n to unminimize (undo cmd-m)
unMinimize = function()
  local app = hs.application.frontmostApplication()
  for k,v in pairs(app:allWindows()) do
    if v:isMinimized() then
      v:unminimize()
      return
    end
  end
end
hyperK:bind({}, 'm', nil, unMinimize)

-----------------------------------------------
-- Reload config on write
-----------------------------------------------
function reload_config(files)
  hs.reload()
end

hs.pathwatcher.new(os.getenv("HOME") .. "/code/dotfiles/hammerspoon/init.lua", reload_config):start()
hs.alert.show("Config loaded")
