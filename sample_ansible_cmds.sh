# sample commands to check if everything is working fine
ansible all --key-file ~/.ssh/ansible -i inventory -m ping

# list hosts
ansible all --list-hosts

# gather inventory. remember it is module
ansible all -m gather_facts

# limit the facts, did not worked in my case
ansible all -m gather_facts --limit 10.23.45.150

# run elevated commands
ansible all -m apt -a update_cache=true --become --ask-become-pass

# install a sample package e.g. ncal
ansible all -m apt -a name=ncal --become --ask-become-pass
# try if tmux is installed
ansible all -m apt -a name=tmux --become --ask-become-pass