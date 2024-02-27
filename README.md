# iac-ltps-ansible

ansible -i /vagrant/ansible/hosts all -m ping

ansible -i /vagrant/ansible/hosts node-01 -m ping

ansible -i /vagrant/ansible/hosts node-01 -m ping -k

ansible -i /vagrant/ansible/hosts webservers -m ping

ansible -i /vagrant/ansible/hosts giropops -m ping

ansible -i /vagrant/ansible/hosts webservers -a "/sbin/ifconfig"

ansible -i /vagrant/ansible/hosts webservers -a "bash -c 'uptime'"

ansible -i /vagrant/ansible/hosts webservers -m shell -a "uptime"

ansible -i /vagrant/ansible/hosts webservers -m copy -a "src=test-copy dest=/tmp"

ansible -i /vagrant/ansible/hosts all -m apt -a "name=git-all state=present" --sudo

ansible -i /vagrant/ansible/hosts webservers -m git -a "repo=https://github.com/badtuxx/giropops-monitoring.git dest=/tmp/giropops version=HEAD"

ansible -i /vagrant/ansible/hosts node-01 -m setup

ansible -i /vagrant/ansible/hosts all -m setup -a "filter=ansible_distribution"

ansible-playbook -i /vagrant/ansible/hosts /vagrant/ansible/day1/nginx_playbook.yml -b

ps -ef

sudo netstat -atunp

ansible-playbook -i /vagrant/ansible/hosts /vagrant/ansible/day1/nginx_playbook.yml
