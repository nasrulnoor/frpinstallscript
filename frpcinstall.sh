!#/bin/bash
wget https://github.com/fatedier/frp/releases/download/v0.38.0/frp_0.38.0_linux_amd64.tar.gz
tar -xf frp_0.38.0_linux_amd64.tar.gz
cd frp_0.38.0_linux_amd64
mkdir /etc/frp/
cp frpc /usr/bin/frpc 
cp frpc.ini /etc/frp/frpc.ini
cp systemd/frpc.service /lib/systemd/system
systemctl enable frpc.service
systemctl start frpc
