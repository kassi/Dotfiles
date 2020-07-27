function setSlackStatusAccordingToNetwork(interface)
  local ssid = hs.wifi.currentNetwork(interface)
  hs.notify.show("Set Slack Status", "", ssid)
  if ssid == "Aries" then
    hs.osascript.applescript('property home : get path to home folder as string\nproperty Slack : load script (home & "ownCloud:Scripts:Slack.scpt" as alias)\ntell Slack to status(":house_with_garden: Working remotely")')
    -- hs.osascript.applescriptFromFile("/Users/karsten.silkenbaeume/ownCloud/Scripts/SlackHomeOffice.scpt")
  elseif ssid == "XING" then
    hs.osascript.applescriptFromFile('property home : get path to home folder as string\nproperty Slack : load script (home & "ownCloud:Scripts:Slack.scpt" as alias)\ntell Slack to status("")')
  end
end

function on_wifi_change(watcher, event, interface)
  if event == "SSIDChange" then
    setSlackStatusAccordingToNetwork(interface)
  end
end
-- wifi_watcher = hs.wifi.watcher.new(on_wifi_change)
-- wifi_watcher:start()
-- setSlackStatusAccordingToNetwork("en0")
