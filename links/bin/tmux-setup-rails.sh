#!/usr/bin/env bash

# TODO: remove all panes except first one

# create all necessary panes

tmux select-pane -t 1
tmux list-panes | cut -d ':' -f 1 | grep -v ^1$ | sort -r | xargs -L 1 tmux kill-pane -t
reset
# first one is for foreman at the top

tmux send-keys "clear; artii foreman" C-m
tmux split-window -v
tmux select-pane -t 2
tmux send-keys "clear; artii -f cybermedium spring" C-m
tmux split-window -v
tmux select-pane -t 3
tmux send-keys "clear; artii guard" C-m
tmux split-window -v
tmux select-pane -t 4
tmux send-keys "clear; artii Jest" C-m
tmux split-window -v
tmux select-pane -t 5
tmux send-keys "clear; artii -f cybermedium 'Command Line'" C-m

# 72 rows - 4 rows divider = 68 rows to spend
tmux resize-pane -t 1 -y 10
tmux resize-pane -t 2 -y 5
tmux resize-pane -t 3 -y 24
tmux resize-pane -t 4 -y 24
tmux resize-pane -t 5 -y 5

tmux select-pane -t 1
