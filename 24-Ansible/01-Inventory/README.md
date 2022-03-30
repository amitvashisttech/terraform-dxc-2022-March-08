```
 1009  mkdir 24-Ansible 

 1010  ls
 1011  cd 24-Ansible/
 1012  ls
 1013  mkdir 01-Inventory
 1014  ls
 1015  cd 01-Inventory/
 1016  ls
 1017  vim inventory 
 1018  ls
 1019  ssh -i /root/.ssh/my-ssh-key.pem ubuntu@18.218.177.229
 1020  ansible all -i inventory -u ubuntu -m ping 
 1021  ansible all -i inventory -u ubuntu -m ping --key=/root/.ssh/my-ssh-key.pem 
 1022  ansible-doc -l 
 1023  ansible-doc ping 
 1024  ansible-doc command 
 1025  ansible all -i inventory -u ubuntu -m command -a 'df -h' --key=/root/.ssh/my-ssh-key.pem 
 1026  cat /etc/os-release
 1027  ansible all -i inventory -u ubuntu -m command -a 'cat /etc/os-release' --key=/root/.ssh/my-ssh-key.pem 
 1028  cat /etc/*-release
 1029  ansible all -i inventory -u ubuntu -m command -a 'cat /etc/*-release' --key=/root/.ssh/my-ssh-key.pem 
 1030  ansible all -i inventory -u ubuntu -m shell -a 'cat /etc/*-release' --key=/root/.ssh/my-ssh-key.pem 
 1031  ls
 1032  history > README.md
```
