## 0、首先更新源，命令如下：
```bash
sudo apt-get update
```
```bash
sudo apt upgrade
```
## 1、运行如下命令安装samba软件
```bash
sudo apt-get install samba samba-common-bin
```
## 2、安装完成后，修改配置文件/etc/samba/smb.conf  
```bash
sudo vi /etc/samba/smb.conf
```
### 配置每个用户可以读写自己的 home 目录，在“[homes]”节中，把 “read only = yes” 改为 “read only = no”   
## 3、重启samba服务  
#### 新版本Linux：
```bash
sudo systemctl restart smbd 
```
#### 旧版本Linux：
```bash
sudo /etc/init.d/samba restart
```
## 4、添加默认用户到samba
```bash
sudo smbpasswd -a $(whoami)
```
### 删除当前用户在 Samba 中的密码：
```bash
sudo smbpasswd -x $(whoami)  
```
### 输入密码确定即可  
## 5、访问树莓派文件（确定Windows开启smb服务）  
### 在映射网络驱动器中输入格式：
```bash
\\<树莓派IP>\<用户名>（例：\\10.0.1.101\raspberry）  
```
### 停止 Samba 服务：  
### 新版本Linux：
```bash
sudo systemctl stop smbd  
```
### 旧版本Linux：
```bash
sudo /etc/init.d/samba stop  
```
### vscode 报错```bashPlease update the ‘security.allowedUNCHosts‘ setting if you want to allow this host```
### 设置面板中,搜索```bashsecurity.allowedUNCHosts```设置,添加树莓派的IP地址即可  
