#!/bin/sh
set -e

tmux new-session -d -s rp-code

tmux new-window -t rp-code:2 -n 'console'
tmux new-window -t rp-code:3 -n 'server'

tmux send-keys -t rp-code:1 "gorp; vim" C-m
tmux send-keys -t rp-code:2 "gorp; rc" C-m
tmux send-keys -t rp-code:3 "gorp; r s" C-m

tmux rename-window -t rp-code:1 'vim'
tmux select-window -t rp-code:1

tmux -2 attach-session -t rp-code

