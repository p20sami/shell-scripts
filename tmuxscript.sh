#! /usr/bin/bash

echo " Welcome to a tmux script! "

echo " Please choose in how many windows you wish that your terminal is split into. "

echo " To move between two or more windows, you can press ctrl+b, then immediately after, the letter o. "

echo " If you wish to add more windows after selecting, you can press ctrl+b, then immediately after the % symbol. "

echo " a.) Two windows "

echo " b.) Three windows "

echo " c.) Four windows "

read windows

tmux session

tmux new-session -d -s session

if [ $windows = "a" ]
then
      tmux split-window -t session:0
fi

if [ $windows = "b" ]
then
      tmux split-window -t session:0
      tmux split-window -t session:0
fi

if [ $windows = "c" ]
then
      tmux split-window -t session:0
      tmux split-window -t session:0
      tmux split-window -t session:0
fi

tmux attach -tsession
      
