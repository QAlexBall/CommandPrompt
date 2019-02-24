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

## Docker
安装docker
```bash
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic test"
sudo apt update
sudo apt install docker-ce
```
普通用户使用docker
```bash
# 创建docker组
➜  ~ sudo groupadd docker
groupadd: group 'docker' already exists
# 将当前用户加入docker用户组
➜  ~ sudo gpasswd -a alex docker
Adding user alex to group docker
# 重启docker服务
➜  ~ sudo systemctl restart docker

➜  ~ docker -v
Docker version 18.09.2, build 6247962

# problems
➜  ~ docker ps                    
Got permission denied while trying to connect to the Docker daemon socket at unix:///var/run/docker.sock: Get http://%2Fvar%2Frun%2Fdocker.sock/v1.39/containers/json: dial unix /var/run/docker.sock: connect: permission denied
➜  ~ sudo su alex -c groups 
➜  ~ sudo chgrp docker /lib/systemd/system/docker.socket
➜  ~ sudo chmod g+w /lib/systemd/system/docker.socket
➜  ~ docker ps                              


# 获取镜像
➜  docker sudo docker pull ubuntu:18.04
# run
➜  ~ sudo docker run -it --rm ubuntu:18.04 bash
root@cc209b60ee20:/# ls
# delete
➜  ~ sudo docker rmi 47b
```

