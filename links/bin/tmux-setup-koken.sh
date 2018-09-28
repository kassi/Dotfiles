#!/usr/bin/env bash

# remove all panes except first one
tmux select-pane -t 1
tmux list-panes | cut -d ':' -f 1 | grep -v ^1$ | sort -r | xargs -L 1 tmux kill-pane -t
reset

if [ "$1" == "stop" ]; then
  exit
fi

# create all necessary panes
# first one is for foreman at the top
tmux send-keys "clear; artii koken" C-m
tmux split-window -h
tmux select-pane -t 1
tmux split-window -v
tmux send-keys "clear; artii 2" C-m
tmux split-window -v
tmux send-keys "clear; artii 3" C-m
# tmux send-keys "kill-spring; clear; artii -f cybermedium spring" C-m
# tmux split-window -v
# tmux select-pane -t 3
# tmux send-keys "clear; artii guard" C-m
# tmux split-window -v
# tmux select-pane -t 4
# tmux send-keys "clear; artii jest" C-m
# tmux split-window -v
# tmux select-pane -t 4
# tmux split-window -h
# tmux send-keys "clear; artii linter" C-m
# tmux select-pane -t 6
# tmux send-keys "clear; artii -f cybermedium 'Command Line'" C-m

# 72 rows - 4 rows divider = 68 rows to spend

# tmux resize-pane -t 1 -y 10
# tmux resize-pane -t 2 -y 5
# tmux resize-pane -t 3 -y 24
# tmux resize-pane -t 4 -x 54 -y 24
# tmux resize-pane -t 6 -y 5

tmux select-pane -t 1

### run sublime
# open sublime if it's not running already (for the current project)
if [[ -z $(ps ax | grep Sublime\ Text | grep -v grep) ]]; then
  tmux send-keys "s . -n" C-m
  # maximize to right of iterm
fi
# open google chrome to 2nd screen
