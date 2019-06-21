## Smart Router 

### dependency

```shell
shadowsocks-libev
dnsmasq | dnsmasq-full
iptables
ipset
```

### DNS-Forwarder + ss-tunnel

* DNS-Forwarder

* ```shell
  Enable
  Listen Port 5353
  Listen Address 0.0.0.0
  DNS Server 127.0.0.1#5300
  ```

* ss-tunnel

* ```shell
  nohup ss-tunnel -s 45.11.1.126 -p 453 -m aes-256-cfb -k motherapp2302 -b 0.0.0.0 -l 5353 -L 8.8.8.8:53 -u -v >> /var/log/ss-tunnel.log &
  ```

### ss-redis

```shell
nohup ss-redir -s 45.11.1.126 -p 453 -m aes-256-cfb -k motherapp2302 -b 0.0.0.0 -l 1080 -u >> /var/log/ss-redir.log &
```

### create gfwlist

```shell
ipset create gfwlist hash:ip
```

* generate gfwlist

* ```shell
  wget https://github.com/cokebar/gfwlist2dnsmasq/gfwlist2dnsmasq.sh
  sh gfwlist2dnsmasq.sh -s gfwlist -o test
  ```

### dnsmasq example

* dnsmasq.conf

* ```shell
  address=/www.baidu.com/192.168.200.222
  server=114.114.114.114
  server=127.0.0.1#5353
  server=/www.google.com/127.0.0.1#5353
  ipset=/www.google.com/gfwlist
  server=/github.githubassets.com/127.0.0.1#5353
  ipset=/github.githubassets.com/gfwlist
  server=/githubapp.com/127.0.0.1#5353
  ipset=/githubapp.com/gfwlist
  ```

* resolve.conf

* ```shell
  search lan
  server 127.0.0.1
  ```

### redirect to ss-redir

```shell
iptables -t nat -A PREROUTING -p tcp -m set --match-set gfwlist dst -j REDIRECT --to-port 1080
iptables -t nat -A OUTPUT -p tcp -m set --match-set gfwlist dst -j REDIRECT --to-port 1080
```

### dns transparent proxy

```shell
ipables -t nat -A PREROUTING -i br-lan -p udp --dport 53 -j REDIRECT --to-port 53
```