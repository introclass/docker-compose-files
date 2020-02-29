wget https://download.docker.com/linux/centos/docker-ce.repo
mv docker-ce.repo /etc/yum.repos.d
yum install -y docker-ce

mkdir -p  /data/{docker,victoria,mysql,grafana}
mkdir -p  ./log/{grafana}

yum install -y docker-compose lrzsz

mkdir -p /etc/docker
cat >/etc/docker/daemon.json <<EOF
{
"live-restore": true,
"data-root": "/data/docker",
 "registry-mirrors": [
    "https://pee6w651.mirror.aliyuncs.com"
 ]
}
EOF

systemctl enable docker
systemctl start docker

sleep 5

docker-compose -f docker-compose.yaml up -d
