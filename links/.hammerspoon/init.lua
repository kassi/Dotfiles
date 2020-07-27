require("hs.ipc")
require("hs.notify")
require("hs.hotkey")
require("window")
require("layout")
require("mouse")

function reloadConfig(files)
  hs.reload()
  hs.notify.new({title = "Hammerspoon",
    informativeText = "Configuration reloaded.",
    autoWithdraw = true,
    withdrawAfter = 2}):send()
end
hs.hotkey.bind({"shift", "ctrl", "alt", "cmd"}, "R", reloadConfig)
hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()
