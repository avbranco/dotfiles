#!/bin/sh
set -e

tmux new-session -d -s rp-code

tmux new-window -t rp-code:1 -n 'server'
#tmux new-window -t rp-code:2 -n 'rps'
#tmux new-window -t rp-code:3 -n 'scheduler'

tmux send-keys -t rp-code:1 "gorp" C-m
#tmux send-keys -t rp-code:2 "gorps" C-m
#tmux send-keys -t rp-code:3 "gorp" C-m
tmux send-keys -t rp-code:0 "gorp" C-m

tmux rename-window -t rp-code:0 'vim'

tmux select-window -t rp-code:0
tmux -2 attach-session -t rp-code

