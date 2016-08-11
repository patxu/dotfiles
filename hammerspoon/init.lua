-----------------------------------------------
-- Set up
-----------------------------------------------

local hyper = {"shift", "cmd", "alt", "ctrl"}

-----------------------------------------------
-- hyper h for left one half window
-----------------------------------------------

hs.hotkey.bind(hyper, "h", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
end)

-----------------------------------------------
-- hyper l for right one half window
-----------------------------------------------

hs.hotkey.bind(hyper, "l", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 2)
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h
    win:setFrame(f)
end)

-----------------------------------------------
-- hyper k for top one half window
-----------------------------------------------

hs.hotkey.bind(hyper, "k", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w
    f.h = max.h / 2
    win:setFrame(f)
end)


-----------------------------------------------
-- hyper j for bottom one half window
-----------------------------------------------

hs.hotkey.bind(hyper, "j", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y + (max.h / 2)
    f.w = max.w
    f.h = max.h / 2
    win:setFrame(f)
end)

-----------------------------------------------
-- hyper m for maximize window
-----------------------------------------------

hs.hotkey.bind(hyper, "m", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w
    f.h = max.h
    win:setFrame(f)
end)

-----------------------------------------------
-- hyper f for fullscreen toggle
-----------------------------------------------

hs.hotkey.bind(hyper, "f", function()
  hs.window.focusedWindow():toggleFullScreen()
end)

-----------------------------------------------
-- hyper q for top left one quarter window
-----------------------------------------------

hs.hotkey.bind(hyper, "q", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
end)

-----------------------------------------------
-- hyper e for top right one quarter window
-----------------------------------------------

hs.hotkey.bind(hyper, "e", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 2)
    f.y = max.y
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)

end)

-----------------------------------------------
-- hyper c for bottom left one quarter window
-----------------------------------------------

hs.hotkey.bind(hyper, "c", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 2)
    f.y = max.y + (max.h / 2)
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
end)

-----------------------------------------------
-- hyper z for bottom right one quarter window
-----------------------------------------------

hs.hotkey.bind(hyper, "z", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y + (max.h / 2)
    f.w = max.w / 2
    f.h = max.h / 2
    win:setFrame(f)
end)

-----------------------------------------------
-- hyper g for left 1/3 window
-----------------------------------------------

hs.hotkey.bind(hyper, "g", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x
    f.y = max.y
    f.w = max.w / 3
    f.h = max.h

    win:setFrame(f)
end)

-----------------------------------------------
-- hyper ; for right 2/3 window
-----------------------------------------------

hs.hotkey.bind(hyper, ";", function()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w / 3)
    f.y = max.y
    f.w = max.w / 3 * 2
    f.h = max.h

    win:setFrame(f)
end)


-----------------------------------------------
-- hyper w to push window to next monitor
-----------------------------------------------

hs.hotkey.bind(hyper, "w", hs.grid.pushWindowNextScreen)

-----------------------------------------------
-- Reload config on write
-----------------------------------------------

function reload_config(files)
    hs.reload()
end
-- hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reload_config):start()

hs.pathwatcher.new(os.getenv("HOME") .. "/code/workspace_settings/hammerspoon/", reload_config):start()
hs.alert.show("Config loaded")

-----------------------------------------------
-- Hyper p to display the current spotify track
-----------------------------------------------

hs.hotkey.bind(hyper, 'p', hs.spotify.displayCurrentTrack)

-----------------------------------------------
-- Hyper t to display the current time
-----------------------------------------------

hs.hotkey.bind(hyper, 't', function() hs.alert.show(os.date("%A %b %d, %Y - %I:%M%p"), 4) end)

-----------------------------------------------
-- Hyper i to show window hints
-----------------------------------------------

-- hs.hotkey.bind(hyper, "i", function()
--     hs.hints.windowHints()
-- end)
