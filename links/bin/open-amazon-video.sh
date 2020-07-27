#!/usr/bin/env bash
# open -a "Safari" "https://www.amazon.de/gp/video/watchlist/ref=sv_atv_8"
open -a "Google Chrome" "https://www.amazon.de/gp/video/watchlist/ref=sv_atv_8"
sleep 2
hs -s <<-LUA
local beamer = "Acer H6517BD"
local windowLayout = {
  {"Google Chrome", nil, beamer, {x=0, y=0, w=1, h=1}, nil, nil}
}
hs.layout.apply(windowLayout)
LUA
