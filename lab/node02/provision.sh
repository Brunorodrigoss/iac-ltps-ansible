#/bin/sh

sudo locale-gen UTF-8

cat << EOT >> /home/vagrant/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDXC6WdKl7G5Y8vtCww3ft4gNI/owR39q+uGOnOzutWSih7m/Gg6Of1T2WTuVS6xZw9Mt0QawgO9MKazR03LSZ64vAjpctbuzTfvj764oF0zxtW0DC0ad5hVj0AUaXv+Ziqe/511GRx/XtdgcUSIgZGQ8pe5IgXu9gB2ZiGAka0ymjTI0zTWM8sGqQ10oeClw/UA7CV71T2J4l1+Qyhe4jdrY6RP2b38aD7LahkOleZMSTKIRanQutAQwZBwkHU07F+Nhq46bjjkBcMRVDDbU6GfWWOa3hfFdCTtzrBfFsTa6yVrF9znnRVTPKfAXjHOK+CnHSeb8/bW9CWsZ+bAQh3 vagrant@control-node
EOT

cat <<EOT >> /etc/hosts
192.168.2.10 control-node
192.168.2.11 node-01
192.168.2.12 node-02
192.168.2.13 node-03
EOT