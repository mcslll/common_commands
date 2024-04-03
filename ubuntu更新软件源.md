## Ubuntu配置apt安装源为清华源[含自动配置脚本]

### 一、备份原配置文件

Ubuntu 的软件源配置文件是 `/etc/apt/sources.list`。将系统自带的该文件做个备份，以防万一。
```bash
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
```
### 二、修改sources.list文件

清华ubuntu软件源配置帮助:https://mirrors.tuna.tsinghua.edu.cn/help/ubuntu/

选择你系统对应版本，下面的就是需要你添加到sources.list文件中的内容。

使用
```bash
sudo vim /etc/apt/source.list
```
打开文件，将文件原内容删除，添加在清华源获取的内容，保存。

### 三、更新软件列表和软件源
```bash
sudo apt-get update
```
```bash
sudo apt-get upgrade
```
### 四、脚本一键配置apt源[Ubuntu18.04]
```bash
#!/bin/bash
#更新apt源为清华源
echo "[Info] 正在备份默认apt源..."
cp /etc/apt/sources.list /etc/apt/sources.list.bak
echo "[Info] 正在替换apt源为清华apt源..."
echo deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic main restricted universe multiverse > /etc/apt/sources.list
echo deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-updates main restricted universe multiverse >> /etc/apt/sources.list
echo deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-backports main restricted universe multiverse >> /etc/apt/sources.list
echo deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ bionic-security main restricted universe multiverse >> /etc/apt/sources.list
echo "[Info] 正在更新源..."
apt update
echo "[Info] 正在更新软件..."
apt upgrade -y

```
