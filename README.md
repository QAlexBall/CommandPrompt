### 2019-02-03
ssh 免密登录
ssh-copy-id -i ~/.ssh/id_rsa.pub alex@192.168.0.100

### 2019-02-16

```bash
# 查看哪些端口被打开
netstat -anp
# 查看该端口号的程序
➜  ~ lsof -i:8838 
COMMAND  PID USER   FD   TYPE DEVICE SIZE/OFF NODE NAME

python  3869 user   20u  IPv4  49250      0t0  TCP ThinkPad:57326->1xx.2x.37.1xx
```

### 2019-02-22

```bash
# 查看网络流量
➜  ~ sudo iftop  
```

