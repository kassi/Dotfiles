require("window")
require("hs.application")
require("hs.screen")

local function _placeApplicationWindow(name, screen, x, y, w, h, timeout, focus)
  local app, win
  local app_timer, win_timer

  local timeout_timer = hs.timer.doAfter(timeout, function()
    if app_timer ~= nil then
      if app_timer:running() then
        app_timer:stop()
      end
    end
    if win_timer ~= nil then
      if win_timer:running() then
        win_timer:stop()
      end
    end
  end)

  app_timer = hs.timer.waitWhile(function()
    app = hs.application.find(name)
    return app == nil
  end, function(timer)
    win_timer = hs.timer.waitWhile(function()
      if app == nil then
        hs.notify.show("placeApplicationWindow", "No application with name '" .. name .. "' found", "")
        return
      end
      win = app:focusedWindow()
      return win == nil
    end, function(timer)
      if win == nil then
        hs.notify.show("placeApplicationWindow", "Application '" .. name .. "' has no focused window", "")
        return
      end
      moveWindowToDisplay(screen)(win)
      placeWindow(x, y, w, h)(win)
      if focus then
        win:focus()
      end
      if timeout_timer:running() then
        timeout_timer:stop()
      end
    end, 0.5)
  end, 0.5)
end
function placeApplicationWindow(args)
  if type(args.name) ~= "string" then
    hs.showError("Mandatory argument 'name' missing")
  elseif type(args.screen) ~= "number" and type(args.screen) ~= "string" then
    hs.showError("Mandatory argument 'screen' missing")
  elseif type(args.x) ~= "number" or type(args.y) ~= "number" or type(args.w) ~= "number" or type(args.h) ~= "number" then
    hs.showError("Mandatory arguments 'x', 'y', 'w' or 'h' missing")
  end
  if type(args.focus) ~= "boolean" then
    args.focus = true
  end
  _placeApplicationWindow(args.name, args.screen, args.x, args.y, args.w, args.h, args.timeout or 10, args.focus)
end

function windowWithUrl(name, url)
  local apps = {hs.application.find(name)}
  if #apps == 0 then
    hs.showError("No application with name '" .. name .. "' found!")
    return
  end

  if name == "Safari" then
    result, obj, desc = hs.osascript.applescript([[
      set q to "]] .. url .. [["
      set windowIndex to 1
      tell application "Safari"
          repeat with theWindow in windows
              set tabIndex to 1
              repeat with theTab in tabs of theWindow
                  if (URL of theTab) starts with q then
                      activate
                      tell theWindow
                          set current tab to tab tabIndex
                          set index to 1
                      end tell
                      tell application "System Events" to tell process "Safari"
                          perform action "AXRaise" of window 1
                        end tell
                      set wid to get id of window 1
                      return wid
                  end
                  set tabIndex to tabIndex + 1
              end repeat
              set windowIndex to windowIndex + 1
          end repeat
      end tell
      return false
    ]])
  elseif name == "Google Chrome" then
    result, obj, desc = hs.osascript.applescript([[
      set q to "]] .. url .. [["
      set windowIndex to 1
      tell application "Google Chrome"
          repeat with theWindow in windows
              set tabIndex to 1
              repeat with theTab in tabs of theWindow
                  if (URL of theTab) starts with q then
                      activate
                      tell window windowIndex
                          set active tab index to tabIndex
                          set index to 1
                      end tell
                      tell application "System Events" to tell process "Google Chrome"
                          perform action "AXRaise" of window 1
                      end tell
                      return true
                  end
                  set tabIndex to tabIndex + 1
              end repeat
              set windowIndex to windowIndex + 1
          end repeat
      end tell
      return false
    ]])
  else
    hs.showError("Application with name '" .. name .. "' not configured for windowWithUrl!")
    return
  end
  -- print(result)
  -- print(obj)
  if not result then
    hs.showError("AppleScript threw an error")
    print("vvv output from applescript vvv")
    print(hs.inspect(desc))
    print("^^^ output from applescript ^^^")
    return
  elseif not obj then
    hs.showError("No window for application '" .. name .. "' with URL '" .. url .. "' found!")
    return
  end
  if type(obj) == "number" then -- it's a window id
    return hs.window.find(obj)
  else
    win = apps[1]:focusedWindow()
    return win
  end
end
