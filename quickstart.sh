d=/etc/ansible
sudo mkdir $d
sudo chown -R $USER:$USER $d
echo '''localhost ansible_connection=local ansible_become_password=u

[node]
192.168.122.161

[node:vars]
ansible_become_password=u
''' | tee /etc/ansible/hosts
