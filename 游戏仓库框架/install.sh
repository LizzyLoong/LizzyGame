#!/bin/bash
echo "请输入要下载的版本，建议下载标号靠前的版本。输入标号即可。"
echo "1.appimage版    2.zip版	3.GOG下载器版"
read -p "请输入一个数字（1-3）：" index
while true; do
    case $index in
        1)
            echo "输入的是 $index ，即将下载appimage版本"
            echo "downloading appimage"
			sleep 1.5
			mkdir -p -m 777 ~/Lizzy/world_of_goo
			cp -r world_of_goo_appimage.zip ~/Lizzy/world_of_goo
            break
            ;;
        2)
            echo "输入的是 $index ，即将下载zip版本"
            echo "downloading zip"
            sleep 1.5
            mkdir -p -m 777 ~/Lizzy/world_of_goo
            cp -r world_of_goo_full.zip ~/Lizzy/world_of_goo
            break
            ;;
        3)
            echo "输入的是 $index ，暂不提供gog下载器版本"
            echo "如需下载，请登陆gog官网进行购买与下载"
            echo "支持正版，人人有责"
            echo "即将下载稳定版本"
            mkdir -p -m 777 ~/Lizzy/world_of_goo
			cp -r world_of_goo_appimage.zip ~/Lizzy/world_of_goo
            break
            ;;
        *)
            echo "输入无效，请输入1、2或3"
            ;;
    esac
done

cd ~/Lizzy/world_of_goo
unzip *.zip
rm *.zip
echo "请输入是否需要创建桌面快捷方式"
echo "1为需要，2为不需要"
echo "警告：创建桌面快捷方式需要输入计算机的sudo密码，来创建桌面快捷方式。"
echo "源代码开放给您，如需查看请进入游戏下载目录，打开desktop.sh查看"
echo "需要sudo的命令是："
echo "sudo cp -r world_of_goo.desktop /usr/share/applications"
echo "请输入是否需要创建桌面快捷方式"
echo "1为需要，其他为不需要"
read IconIsNeeded
echo "输入的是1"
if [ $((IconIsNeeded)) -eq 1 ];then

    if [ $((index)) -eq 1 ] || [ $((index)) -eq 3 ];then
        cd world_of_goo_appimage
        chmod 777 desktop.sh
        ./desktop.sh
    elif [ $((index)) -eq 2 ];then
        cd world_of_goo_full
        chmod 777 desktop.sh
        ./desktop.sh
    fi
else
	echo "不需要创建桌面图标"
fi

