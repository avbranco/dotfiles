#!/bin/sh
set -e

tmux new-session -d -s rp-code

tmux new-window -t rp-code:2 -n 'console'
tmux new-window -t rp-code:3 -n 'server'
tmux new-window -t rp-code:4 -n 'zeus'

tmux send-keys -t rp-code:4 "gorp; zeus start" C-m

tmux send-keys -t rp-code:1 "gorp; vim" C-m
tmux send-keys -t rp-code:2 "gorp; rc" C-m
tmux send-keys -t rp-code:3 "gorp; zeus server" C-m

tmux rename-window -t rp-code:1 'vim'
tmux select-window -t rp-code:1

tmux -2 attach-session -t rp-code

