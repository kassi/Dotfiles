require("window")
require("hs.application")
spaces = require("hs._asm.undocumented.spaces")

local log = hs.logger.new('layout','debug')

function unpack(t, i)
  i = i or 1
  if t[i] ~= nil then
    return t[i], unpack(t, i + 1)
  end
end

function placeApplicationWindow(config, win)
  return function()
    if config.display then
      moveWindowToDisplay(config.display)(win)
    end
    if config.position then
      placeWindow(unpack(config.position))(win)
    elseif config.maximize then
      win:maximize()
    end
    if config.func then
      config.func(win)
    end
  end
end

-- start an application with cmd
-- wait until it's launched and the window with title is visible
-- store app and win and move the window to the correct display and position
function startApplication(config)
  watcher = hs.application.watcher.new(function(name, type, application)
    if name == config.name and type == hs.application.watcher.activated then
      watcher:stop()
      hs.timer.waitUntil(function()
        return application:getWindow(config.title) ~= nil
      end, placeApplicationWindow(config), 0.1)
    end
  end)
  watcher:start()
  res = hs.execute(config.cmd, true)
end

function layoutWindows(config)
  wins = hs.application.find(config.name):allWindows()
  for i, win in ipairs(wins) do
    placeApplicationWindow(config, win)()
  end
end

function layoutApplications(layout)
  for i, app in ipairs(layout) do
    if app.cmd then
      startApplication(app)
    else
      layoutWindows(app)
    end
  end
end
