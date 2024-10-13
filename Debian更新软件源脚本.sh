#!/bin/bash
# 更新apt源为清华源
echo "[Info] 正在备份默认apt源..."
cp /etc/apt/sources.list /etc/apt/sources.list.bak

echo "[Info] 正在替换apt源为清华apt源..."
echo deb https://mirrors.tuna.tsinghua.edu.cn/debian/ bookworm main contrib non-free non-free-firmware > /etc/apt/sources.list
echo deb https://mirrors.tuna.tsinghua.edu.cn/debian/ bookworm-updates main contrib non-free non-free-firmware >> /etc/apt/sources.list
echo deb https://mirrors.tuna.tsinghua.edu.cn/debian/ bookworm-backports main contrib non-free non-free-firmware >> /etc/apt/sources.list
echo deb https://mirrors.tuna.tsinghua.edu.cn/debian-security bookworm-security main contrib non-free non-free-firmware >> /etc/apt/sources.list

echo "[Info] 正在更新源..."
apt update

echo "[Info] 正在更新软件..."
apt upgrade -y
