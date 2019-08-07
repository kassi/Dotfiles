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

-- Places a window on screen via percentages or x, y, w, h values.
function placeWindow(xp, yp, wp, hp)
  local win = hs.window.focusedWindow()
  local screen = win:screen()
  local max = screen:frame()
  local f = win:frame()

  f.x = max.x + (max.w / 100 * xp)
  f.y = max.y + (max.h / 100 * yp)
  f.w = max.w / 100 * wp
  f.h = max.h / 100 * hp
  win:setFrame(f,0)
end

hs.hotkey.bind({"ctrl", "alt", "cmd"}, "Left", function()
  placeWindow(0, 0, 50, 100)
end)

hs.hotkey.bind({"ctrl", "alt", "cmd"}, "Right", function()
  placeWindow(50, 0, 50, 100)
end)

hs.hotkey.bind({"ctrl", "alt", "cmd"}, "Up", function()
  placeWindow(0, 0, 100, 50)
end)

hs.hotkey.bind({"ctrl", "alt", "cmd"}, "Down", function()
  placeWindow(0, 50, 100, 50)
end)

hs.hotkey.bind({"ctrl", "alt", "cmd"}, ",", function()
  placeWindow(0, 0, 62, 100)
end)

hs.hotkey.bind({"ctrl", "alt", "cmd"}, ".", function()
  placeWindow(62, 0, 38, 100)
end)

-- Center window
hs.hotkey.bind({"ctrl", "alt", "cmd"}, "C", function()
  placeWindow(25, 0, 50, 100)
end)

hs.hotkey.bind({"ctrl", "alt", "cmd"}, "M", function()
  local win = hs.window.focusedWindow()
  win:maximize(0)
end)

-- Resize and center window
hs.hotkey.bind({"shift", "ctrl", "alt", "cmd"}, "C", function()
  placeWindow(12.5, 5, 75, 90)
end)

-- previous/next monitor
hs.hotkey.bind({"ctrl", "alt"}, "Left", function()
  local win = hs.window.focusedWindow()
  win:moveOneScreenWest(0)
end)
hs.hotkey.bind({"ctrl", "alt"}, "Right", function()
  local win = hs.window.focusedWindow()
  win:moveOneScreenEast(0)
end)

-- previous/next screen
hs.hotkey.bind({"ctrl", "cmd"}, "Left", function()
  moveWindowOneSpace("left")
end)
hs.hotkey.bind({"ctrl", "cmd"}, "Right", function()
  moveWindowOneSpace("right")
end)
