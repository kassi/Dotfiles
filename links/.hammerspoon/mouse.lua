require("hs.notify")
require("hs.usb")

local mouseCircle = nil
local mouseCircleTimer = nil

function mouseHighlight()
    -- Delete an existing highlight if it exists
    if mouseCircle then
        mouseCircle:delete()
        if mouseCircleTimer then
            mouseCircleTimer:stop()
        end
    end
    -- Get the current co-ordinates of the mouse pointer
    mousepoint = hs.mouse.getAbsolutePosition()
    -- Prepare a big red circle around the mouse pointer
    mouseCircle = hs.drawing.circle(hs.geometry.rect(mousepoint.x-40, mousepoint.y-40, 80, 80))
    mouseCircle:setStrokeColor({["red"]=1,["blue"]=0,["green"]=0,["alpha"]=1})
    mouseCircle:setFill(false)
    mouseCircle:setStrokeWidth(5)
    mouseCircle:show()

    -- Set a timer to delete the circle after 3 seconds
    mouseCircleTimer = hs.timer.doAfter(0.5, mouseFadeOut)
end
function mouseFadeOut()
  local alpha = mouseCircle:alpha()
  local step  = 0.1
  if alpha >= step then
    mouseCircle:setAlpha(alpha-step)
    hs.timer.doAfter(0.05, mouseFadeOut)
  else
    mouseCircle:delete()
  end
end
-- hs.hotkey.bind({"cmd"}, "f1", mouseHighlight)

local kbwatcher
local last_added
local bluetooth_wait_time = 20
function watchKeyboardToSwitchMouse(event)
  local btID = "7c-6d-62-ee-d5-63"
  hs.printf("USB event: vendor " .. event["vendorID"] .. " product " .. event["productID"] .. " was " .. event["eventType"])

  if event["vendorID"] == 1452 and event["productID"] == 592 then
    hs.printf("It's about our keyboard")
    kbwatcher:stop()
    if event["eventType"] == "removed" then
      now = os.time()
      -- sometime when plugging in the keyboard, we receive an added and a removed event.
      if last_added == null or os.difftime(now, last_added) > 10 then
        hs.printf("Going to disconnect bluetooth")
        -- drop bluetooth mouse
        hs.notify.show("Keyboard removed", "Disconnecting mouse now", "")
        hs.execute("blueutil --disconnect " .. btID .. " && blueutil -p 0 && sleep " .. bluetooth_wait_time .. " && blueutil -p 1", true)
        hs.notify.show("Keyboard removed", "Mouse disconnected. Bluetooth enabled again", "")
      else
        hs.printf("Last add event too recent! Skipping remove")
      end
    elseif event["eventType"] == "added" then
      last_added = os.time()
      hs.printf("Going to connect bluetooth device")
      hs.notify.show("Keyboard added", "Connecting mouse now", "")
      hs.execute("blueutil -p 1 && blueutil --connect " .. btID, true)
    end
    kbwatcher:start()
  end
end
kbwatcher = hs.usb.watcher.new(watchKeyboardToSwitchMouse)
kbwatcher:start()
hs.printf("USB watcher for watchKeyboardToSwitchMouse started")
