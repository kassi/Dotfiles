#!/bin/bash
tmux list-panes -F '#{pane_index} #{pane_tty}' | grep "^$1 " | awk '{print $2}'
