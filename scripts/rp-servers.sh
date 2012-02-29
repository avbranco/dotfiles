#!/bin/sh
set -e

tmux new-session -d -s rp-servers

tmux new-window -t rp-servers:1 -n 'fragola' 'ssh fragola'
tmux new-window -t rp-servers:2 -n 'nutella' 'ssh nutella'
tmux new-window -t rp-servers:3 -n 'melancia' 'ssh mel'
tmux new-window -t rp-servers:4 -n 'vaniglia' 'ssh vaniglia'

tmux select-window -t rp-servers:1
tmux -2 attach-session -t rp-servers

