require("window")
require("mouse")
require("hs.ipc")
-- require("caffeine")

function reloadConfig(files)
  hs.reload()
  hs.notify.new({title = "Hammerspoon", informativeText = "Configuration reloaded."}):send():release()
end
hs.hotkey.bind({"shift", "ctrl", "alt", "cmd"}, "R", reloadConfig)
hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()

function spaceWatcher(space)
  output = hs.execute("defaults read com.apple.spaces")

  hs.alert("Welcome to space " .. space)
end

local watcher = hs.spaces.watcher.new(spaceWatcher)
-- watcher:start()
