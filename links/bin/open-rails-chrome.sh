#!/usr/bin/env bash
open -n -a "Google Chrome" "http://localhost:3000/"

sleep 1

hs -s <<-LUA
local beamer = "Acer H6517BD"
local windowLayout = {
  {"Google Chrome", nil, beamer, {x=0, y=0, w=1, h=1}, nil, nil}
}
hs.layout.apply(windowLayout)
LUA
