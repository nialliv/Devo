DevoPsi

+ надо пролить ssh-keygen на админку
+ надо пролить ss-copy-id на серваки
+ пролить гита на админку

pwd = ~/DevoPsi/Ansible

Для запуска надо:
ansible-playbook playbooks/PRODUCTION.yml -e "MYHOSTS=<myHostsVariable>, HOME=<homedir_admin_server>"


Для переключения окружения используем 2(сократил до 0) переменных:

== группы в файле Ansible/inventory/hosts.yml ==
== переменные лежат в Ansible/playbooks/PRODUCTION/vars/main.yml ==

Update Ansible/inventory/hosts.yml
Update Ansible/playbooks/PRODUCTION/handlers
Update Ansible/playbooks/PRODUCTION/tasks
Update Ansible/playbooks/PRODUCTION/vars
Update Ansible/playbooks/PRODUCTION/defaults
