#!/usr/local/bin/bash
cd $1
tmux kill-session -t jupyter >> /dev/null;
tmux new-session -d -s jupyter >> /dev/null;
tmux send-keys -t jupyter "cd $1" Enter
tmux send-keys -t jupyter ". .activate_venv.sh" Enter
tmux send-keys -t jupyter "jupyter notebook" Enter
echo -e "$(tput setaf 22)Jupyter server started successfully \033[0m"
