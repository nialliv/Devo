DevoPsi

Update Ansible/inventory/hosts.yml

Update Ansible/playbooks/PRODUCTION/handlers

Update Ansible/playbooks/PRODUCTION/tasks

Update Ansible/playbooks/PRODUCTION/vars

Update Ansible/playbooks/PRODUCTION/defaults

# Для переключения окружения используем 2 переменных:

# 1. Ansible/playbooks/PRODUCTION/vars/main.yml 
# == поменять переменную home ( не юзер, а домашняя директория админки) ==

# 2. Ansible/playbooks/PRODUCTION.yml
# == поменять переменную hosts, указать свою группу ==

# == группы в файле Ansible/inventory/hosts.yml ==
# == переменные лежат в Ansible/playbooks/PRODUCTION/vars/main.yml ==
