```shell
# SSR config
set install_path == /usr/local/share/shadowsocksr
sudo git clone -b manyuser https://github.com/shadowsocksr-backup/shadowsocksr $install_path
vim $install_path/config.json
cd $install_path
sudo python local.py -d stop
sudo python local.py -d start


# privoxy
apt install privoxy
sudo vim /etc/privoxy/config
# listen-address 127.0.0.1:8118
# listen-address [::1]:8118
...
listen-address 0.0.0.0:8118
forward-socks5 localhost:1080
sudo service start privoxy
```

