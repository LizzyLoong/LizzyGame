#!/bin/bash
echo "安装前请确保处于联网状态"
echo "输入任意内容以开始下载，以回车键结束"
read anyKey
echo "接下来将通过shell自动安装一些必需组件，请关注屏幕，需要确定时摁Y确定"
echo "请输入计算机sudo密码"
sudo apt-get update
sudo apt-get install libfuse2
sudo apt-get install build-essential



mkdir -p -m 777 ~/Lizzy/Lizzy游戏平台
cp -r lizzy_game/Lizzy.sh ~/Lizzy/Lizzy游戏平台


