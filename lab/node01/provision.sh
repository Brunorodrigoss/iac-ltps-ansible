#/bin/sh

sudo apt update

cat << EOT >> /home/vagrant/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCjzVhc1YBNUDW4CjKvSak/szVZ9+IzogI7d+fDMv+vXew88KD8ub/atf2mY/FJoTPSnN9OmOPcGxpn19NpyDmpXMZgrD02J1/zFhryiJYuyAKgGfJ1aoJI3YMhCkSrTat0zCgGyggFbI3qJrOea67RdYW8aefy6BoyR73nqOpHmhftL66hMDu1i4zt2G7sdpnzx8P1JOdtsINk3MwX1B8pkCoMmE2KPZiai4k8hxLEXmTzLzfCnDx1Aq1YGIBTtspsT8SqxDSKm2PlbjLcLX5eWPdDrWMZrIv5oNZYTEAku/PzDop0DvP8/VOhDPKVI5DEsOb1obazBwYh/+gKEjPVPGzPblZN9vwrxy3+vphLStFng7sKFEb+8KwkNtErVWfbTOlhrNR4pj4lcRpyEBeG0nKUeLLMRIhT0uivCsy7Pg4bKjAWe8HouRbjsuwZfNW9vCaOn8scuLaDLSYDiC/NIfHc/L93MU1GC8RHcNe6a5biSJnzsbd+BEj0V/Doti8= vagrant@control-node
EOT

cat <<EOT >> /etc/hosts
192.168.2.10 control-node
192.168.2.11 node-01
192.168.2.12 node-02
192.168.2.13 master
EOT