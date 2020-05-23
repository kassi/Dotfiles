spaces = require("hs._asm.undocumented.spaces")
local log = hs.logger.new('window','debug')

-- hs.inspect(spaces.layout)
-- spaces.mainScreenUUID()

function getDisplayInOrder(d)
  local displays = {}
  for k, v in pairs(hs.screen.screenPositions()) do
    displays[v.x+1] = k
  end
  return displays[d]
end

function placeWindow(x, y, w, h)
  return function(win)
    if win == nil then
      win = hs.window.focusedWindow()
    end
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + max.w * x
    f.y = max.y + max.h * y
    f.w = max.w * w
    f.h = max.h * h
    win:setFrame(f, 0)
  end
end

function moveWindowToDisplay(d)
  return function(win)
    if win == nil then
      win = hs.window.focusedWindow()
    end
    win:moveToScreen(getDisplayInOrder(d), false, true)
  end
end

function enterFullscreenMode()
  local win = hs.window.focusedWindow()
  win:setFullScreen(true)
end

hs.hotkey.bind({"ctrl", "alt", "cmd"}, "Left",  placeWindow(0, 0, 0.5, 1))
hs.hotkey.bind({"ctrl", "alt", "cmd"}, "Right", placeWindow(0.5, 0, 0.5, 1))
hs.hotkey.bind({"ctrl", "alt", "cmd"}, "Up", placeWindow(0, 0, 1, 0.5))
hs.hotkey.bind({"ctrl", "alt", "cmd"}, "Down", placeWindow(0, 0.5, 1, 0.5))
hs.hotkey.bind({"ctrl", "alt", "cmd"}, ",", placeWindow(0, 0, 0.62, 1))
hs.hotkey.bind({"ctrl", "alt", "cmd"}, ".", placeWindow(0.62, 0, 0.38, 1))
hs.hotkey.bind({"ctrl", "alt", "cmd"}, "C", placeWindow(0.25, 0, 0.5, 1))
hs.hotkey.bind({"shift", "ctrl", "alt", "cmd"}, "C", placeWindow(0.125, 0.05, 0.75, 0.9))

hs.hotkey.bind({"ctrl", "alt", "cmd"}, "M", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  win:maximize(0)
end)

hs.hotkey.bind({"ctrl", "alt"}, "Left", function()
  local win = hs.window.focusedWindow()
  win:moveOneScreenWest(0)
end)
hs.hotkey.bind({"ctrl", "alt"}, "Right", function()
  local win = hs.window.focusedWindow()
  win:moveOneScreenEast(0)
end)

hs.hotkey.bind({"ctrl", "alt", "cmd"}, "1", moveWindowToDisplay(1))
hs.hotkey.bind({"ctrl", "alt", "cmd"}, "2", moveWindowToDisplay(2))
hs.hotkey.bind({"ctrl", "alt", "cmd"}, "3", moveWindowToDisplay(3))
