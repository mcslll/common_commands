## 设置python的依赖安装镜像服务器为清华大学服务器
```bash
pip3 config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple
```
## 0、安装 venv
```bash
sudo apt install python3-venv  #或  sudo apt install python3.10-venv
```
## 1、生成一个Python虚拟环境
```bash
mkdir -p $HOME/env && python3 -m venv $HOME/env/project_name
```
## 2、启用虚拟环境
```bash
source $HOME/env/project_name/bin/activate
```
### 退出虚拟环境
```bash
deactivate
```
## 3、安装模块，如 algoliasearch
```bash
pip install --upgrade pip
```
### 安装软件依赖必须包
```bash
pip3 install -r requirements.txt
pip install algoliasearch
``` 
## 4、用新的虚拟环境执行py文件
```bash
python ./demo.py
```
