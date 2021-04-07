# use only before Ubuntu 20.04
# sudo apt-add-repository -y ppa:ansible/ansible

echo "----------> Installing Ansible "
sudo apt-get update
sudo apt-get install -y software-properties-common ansible

echo "----------> Downloading Ansible roles"
ansible-galaxy install -r requirements.yml -p ./roles --force

echo "----------> Playing Ansible playbooks"
ansible-playbook playbook.yml -i hosts --ask-become-pass
