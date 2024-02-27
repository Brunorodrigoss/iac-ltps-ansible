#/bin/sh
echo "Installing Ansible..."
sudo apt update
sudo apt install -y software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
sudo apt install -y ansible

cat <<EOT >> /etc/hosts
192.168.2.10 control-node
192.168.2.11 node-01
192.168.2.12 node-02
192.168.2.13 node-03
EOT

# cat <<EOT >> /etc/ansible/hosts
# [apps]
# app01
# app02
# app03
# EOT