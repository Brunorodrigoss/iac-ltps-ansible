#/bin/sh

sudo apt update

cat << EOT >> /home/vagrant/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC114LSqF2dzsBNf7qx1uSJdtlp2XhtFWK0qAWQphL/+hJywLq7nEp9xJAmqLW66Ytz1h6q/EvqgNzEtm28IgaHJLAxnsaiYbxeCr6kdoX7YhZkbQyot46NdJKjOMK71jzerPgs3DB4216+lAyknY8T3hUXpasDc4io6RUHrGRLG0irx8JE4/c2XyW4GPhXyGNazXTB7K8/Z1mUrZ8QwQvQ4TSbp/bYeU//tnlOTR7kUCyjIBcJPgd+nukeXVWnKrOJDzgIGoA0v90uWKMUI+02iHZStbIyUR9VogXt6coJR5iFgd7sThL8EceyH5qHpM3omtlgS6xnkOzMc6Ff1t4rQxEGwWwE5VYOMD6WlUTccueTWpc2KiB+p8c1t8iqGoyK637vsBoAwicfb+yOb7k+YYxh7HpwWN4337ArGmvjOlcOI9fNKK4S0kuWECpUCkMPhOQsR9F8C6pKIOLEWGTmsxmiqodK4L/DiSFAEzUcng0Fv1C3BH2+pNf/ce907Ss= vagrant@control-node
EOT

cat <<EOT >> /etc/hosts
192.168.2.10 control-node
192.168.2.11 node-01
192.168.2.12 node-02
192.168.2.13 node-03
EOT