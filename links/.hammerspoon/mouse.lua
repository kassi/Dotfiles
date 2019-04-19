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
