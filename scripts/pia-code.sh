#!/bin/sh
set -e

cd ~/work/pia

tmux new-session -d -s code
tmux new-session -d -s monitor

#code
tmux new-window -t code:2 -n 'console'
tmux new-window -t code:3 -n 'server'

tmux send-keys -t code:1 "vim" C-m
tmux send-keys -t code:2 "rc" C-m
tmux send-keys -t code:3 "rs" C-m

tmux rename-window -t code:1 'vim'
tmux select-window -t code:1

#monitor
tmux new-window -t monitor:2 -n 'zeus'
tmux send-keys -t monitor:2 "zeus start" C-m
tmux send-keys -t monitor:1 "ssh mcd5 'pia_alert_watcher.rb'" C-m

tmux -2 attach-session -t code

