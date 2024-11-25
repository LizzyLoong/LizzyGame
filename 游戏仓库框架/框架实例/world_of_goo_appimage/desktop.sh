#!/bin/bash
cp -r world_of_goo.desktop ~/Desktop
echo "请输入计算机sudo密码"
sudo cp -r world_of_goo.desktop /usr/share/applications
echo "桌面快捷方式创建完成"