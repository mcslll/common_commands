## Supervisor是一个用于进程管理的工具。  
### 它允许用户监控、启动、停止、重启和管理系统中的多个进程。  
### Supervisor提供了一个简单的命令行界面和一个Web界面，使用户能够方便地查看和控制各个进程的状态。  
启动Supervisord：
```bash
supervisord
```
停止Supervisord：
```bash
supervisorctl shutdown
```
查看所有被管理的进程状态：
```bash
supervisorctl status
```
启动某个进程：
```bash
supervisorctl start <process_name>
```
停止某个进程：
```bash
supervisorctl stop <process_name>
```
重启某个进程：
```bash
supervisorctl restart <process_name>
```
查看某个进程的日志：
```bash
supervisorctl tail -f <process_name>
```
### 当你已经在 supervisorctl 交互模式下时，不需要再重复输入 supervisorctl 这个前缀。  
### 你可以直接使用命令而无需加前缀
