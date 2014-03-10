#!/bin/sh
set -e

cd ~/work/pia

tmux new-session -d -s pia-code
tmux new-session -d -s pia-monitor

#code
tmux new-window -t pia-code:2 -n 'console'
tmux new-window -t pia-code:3 -n 'server'

tmux send-keys -t pia-code:1 "vim" C-m
tmux send-keys -t pia-code:2 "rc" C-m
tmux send-keys -t pia-code:3 "rs" C-m

tmux rename-window -t pia-code:1 'vim'
tmux select-window -t pia-code:1

#monitor
tmux send-keys -t pia-monitor:1 "ssh mcd5 'pia_alert_watcher.rb'" C-m

tmux -2 attach-session -t pia-monitor

