#!/usr/bin/env bash

# Attach to session / create it if it doesn't exist
tmux new -A -s Blender

# remove all panes except first one
tmux select-pane -t 1
tmux list-panes | cut -d ':' -f 1 | grep -v ^1$ | sort -r | xargs -L 1 tmux kill-pane -t
reset

if [ "$1" == "stop" ]; then
  exit
fi

# create all necessary panes
# first one is for foreman at the top
tmux send-keys "clear; artii Blender" C-m
tmux split-window -h
tmux select-pane -t 2
tmux send-keys "cd /Users/Kassi/Projects/Modeling/Scripts; clear; artii Scripts" C-m
tmux split-window -v
tmux select-pane -t 3
tmux send-keys "cd /Users/Kassi/Documents/Privat/Wohnung/Einrichtung; clear; artii Models" C-m

# 72 rows - 4 rows divider = 68 rows to spend
# tmux resize-pane -t 1 -y 10
# tmux resize-pane -t 2 -y 5
# tmux resize-pane -t 3 -y 24
# tmux resize-pane -t 4 -x 54 -y 24
# tmux resize-pane -t 6 -y 5

tmux select-pane -t 1

### run blender
# open sublime if it's not running already (for the current project)
if [[ -z $(ps ax | grep blender | grep -v grep | grep -v tmux-setup) ]]; then
  tmux send-keys "blender"
  # maximize to right of iterm
fi
