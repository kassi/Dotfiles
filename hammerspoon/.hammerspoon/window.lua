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

hs.hotkey.bind({"ctrl", "alt", "cmd"}, "Left", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f,0)
end)

hs.hotkey.bind({"ctrl", "alt", "cmd"}, "Right", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 2)
  f.y = max.y
  f.w = max.w / 2
  f.h = max.h
  win:setFrame(f,0)
end)

hs.hotkey.bind({"ctrl", "alt", "cmd"}, ",", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x
  f.y = max.y
  f.w = max.w / 100 * 62
  f.h = max.h
  win:setFrame(f,0)
end)

hs.hotkey.bind({"ctrl", "alt", "cmd"}, ".", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w / 100 * 62)
  f.y = max.y
  f.w = max.w / 100 * 38
  f.h = max.h
  win:setFrame(f,0)
end)

-- Center window
hs.hotkey.bind({"ctrl", "alt", "cmd"}, "C", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()

  f.x = max.x + (max.w - f.w) / 2
  f.y = max.y + (max.h - f.h) / 2
  win:setFrame(f,0)
end)

hs.hotkey.bind({"ctrl", "alt", "cmd"}, "M", function()
  local win = hs.window.focusedWindow()
  win:maximize(0)
end)

-- Resize and center window
hs.hotkey.bind({"shift", "ctrl", "alt", "cmd"}, "C", function()
  local win = hs.window.focusedWindow()
  local f = win:frame()
  local screen = win:screen()
  local max = screen:frame()
  local percw = 75
  local perch = 90

  f.w = max.w / 100 * percw
  f.h = max.h / 100 * perch
  f.x = max.x + (max.w - f.w) / 2
  f.y = max.y + (max.h - f.h) / 2
  win:setFrame(f,0)
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
