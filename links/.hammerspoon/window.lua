require("hs.hotkey")
require("display")

-- spaces = require("hs._asm.undocumented.spaces")
-- hs.inspect(spaces.layout)
-- spaces.mainScreenUUID()

function moveWindowOneSpace(direction)
   local mouseOrigin = hs.mouse.getAbsolutePosition()
   local win = hs.window.focusedWindow()
   local clickPoint = win:zoomButtonRect()

   clickPoint.x = clickPoint.x + clickPoint.w + 3
   clickPoint.y = clickPoint.y + (clickPoint.h / 2)

   local mouseClickEvent = hs.eventtap.event.newMouseEvent(hs.eventtap.event.types.leftMouseDown, clickPoint)
   mouseClickEvent:post()
   hs.timer.usleep(150000)

   local nextSpaceDownEvent = hs.eventtap.event.newKeyEvent({"ctrl"}, direction, true)
   nextSpaceDownEvent:post()
   hs.timer.usleep(150000)

   local nextSpaceUpEvent = hs.eventtap.event.newKeyEvent({"ctrl"}, direction, false)
   nextSpaceUpEvent:post()
   hs.timer.usleep(150000)

   local mouseReleaseEvent = hs.eventtap.event.newMouseEvent(hs.eventtap.event.types.leftMouseUp, clickPoint)
   mouseReleaseEvent:post()
   hs.timer.usleep(150000)

   hs.mouse.setAbsolutePosition(mouseOrigin)
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

function enterFullscreenMode()
  local win = hs.window.focusedWindow()
  win:setFullScreen(true)
end

-- this can be extended to
-- a) placeWindow as is
-- b) add a new bind (shadow) for 90° key (Left -> up+down) that places the window to the upper/lower left
-- c) create a timer that removes the created bind
hs.hotkey.bind({"ctrl", "alt", "cmd"}, "Left", placeWindow(0, 0, 0.5, 1))
hs.hotkey.bind({"ctrl", "alt", "cmd"}, "Right", placeWindow(0.5, 0, 0.5, 1))
hs.hotkey.bind({"ctrl", "alt", "cmd"}, "Up", placeWindow(0, 0, 1, 0.5))
hs.hotkey.bind({"ctrl", "alt", "cmd"}, "Down", placeWindow(0, 0.5, 1, 0.5))
hs.hotkey.bind({"ctrl", "alt", "cmd"}, ",", placeWindow(0, 0, 0.62, 1))
hs.hotkey.bind({"ctrl", "alt", "cmd"}, ".", placeWindow(0.62, 0, 0.38, 1))
hs.hotkey.bind({"ctrl", "alt", "cmd"}, "C", placeWindow(0.15, 0, 0.7, 1))
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
hs.hotkey.bind({"ctrl", "cmd"}, "Left", function()
  moveWindowOneSpace("left")
end)
hs.hotkey.bind({"ctrl", "cmd"}, "Right", function()
  moveWindowOneSpace("right")
end)
