# Ansible

https://www.bilibili.com/video/av25424954?from=search&seid=10758739566331211537

是2013年退出的一种自动化工具,可用与配置管理或工作流程自动化.

Ansible使用Python编写,它使用SSH在不同的机器上执行命令.Ansible是无代理的.

目标: 为每个人做自动化

使用范围:

* 自动化部署应用
* 自动化管理配置
* 自动化持续交付
* 自动化云服务管理
* 自动化网络设备管理



## Ansible配置

配置文件存在不同的位置,单只有一个可用

在下列列表中,ansible从上往下依次检查,检查到哪个可用就用哪个

1. ANSIBLE_CONFIG环境变量: 可以定义配置文件的位置
2. ./ansible.cfg: 存在于当前工作目录
3. ~/.ansible.cfg: 存在与当前用户家目录
4. /etc/ansible/ansible.cfg 默认目录

