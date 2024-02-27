# iac-ltps-ansible

ansible -i hosts all -m ping

ansible -i hosts node-01 -m ping

ansible -i hosts node-01 -m ping -k

ansible -i hosts webservers -m ping

ansible -i hosts giropops -m ping

ansible -i hosts webservers -a "/sbin/ifconfig"

ansible -i hosts webservers -a "bash -c 'uptime'"

ansible -i hosts webservers -m shell -a "uptime"

ansible -i hosts webservers -m copy -a "src=test-copy dest=/tmp"

ansible -i hosts all -m apt -a "name=git-all state=present" --sudo

ansible -i hosts webservers -m git -a "repo=https://github.com/badtuxx/giropops-monitoring.git dest=/tmp/giropops version=HEAD"

ansible -i hosts node-01 -m setup

ansible -i hosts all -m setup -a "filter=ansible_distribution"

ansible-playbook -i hosts nginx_playbook.yml -s

ps -ef

