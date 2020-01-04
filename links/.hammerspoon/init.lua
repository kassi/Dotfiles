require("window")
require("layout")
require("mouse")
require("screen")
require("hs.ipc")
-- require("caffeine")

function reloadConfig(files)
  hs.reload()
  hs.notify.new({title = "Hammerspoon", informativeText = "Configuration reloaded."}):send():release()
end
hs.hotkey.bind({"shift", "ctrl", "alt", "cmd"}, "R", reloadConfig)
hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()
