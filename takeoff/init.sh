#!/bin/bash
# Maintainer: Paper-Dragon



#fonts color
Green="\033[32m"
Red="\033[31m"
#Yellow="\033[33m"
GreenBG="\033[42;37m"
RedBG="\033[41;37m"
YellowBG="\033[43;37m"
Font="\033[0m"

#notification information
Info="${Green}[信息]${Font}"
OK="${Green}[OK]${Font}"
Error="${Red}[错误]${Font}"
Warning="${Red}[警告]${Font}"

config_file="./xray/config.json"

change_server_address() {
    echo "[DEBUG] server ip => $1"
    sed -i "s/YOUR-SERVER-IP-ADDRESS/$1/g" $config_file
}


list(){
    case $1 in
    run)
        change_server_address $2
        ;;
    *)
        echo -e "请使用 ${RedBG} bash $0 run <YOUR-SERVER-IP-ADDRESSS> ${Font} 选项，以准备运行环境!!"
        exit 1
        ;;
    esac
}

list $1 $2