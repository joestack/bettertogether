[all:vars]
ansible_ssh_common_args='-o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'

[webnodes]
${web_hosts_def}

[apinodes]
# here we can insert the variable for the API node class
