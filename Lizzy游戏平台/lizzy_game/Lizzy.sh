#!/bin/bash
echo "当前时间：$(date)"
echo $(date)
time=$RANDOM
echo "$time"


#连接至游戏仓库
cd /media/lizzy/本地2T2/软件仓库/搭建完成


tmux new -s $time
echo "当前会话：$time"