# Info

Sample vagrant file uploaded for future reference and the following command must be run after vagrant box is deployed

```bash
# creates a admin user psible with 
sudo useradd -m -d /home/psible -s /bin/bash -G sudo psible
passwd psible

# create ssh key for admin with paraphrase and copy to remote server
ssh-keygen -t ed25519 -C "admin"
ssh-copy-id -i ~/.ssh/id_ed25519 10.23.45.150
ssh-copy-id -i ~/.ssh/id_ed25519 10.23.45.151

# create ssh key for ansible without paraphrase
ssh-keygen -t ed25519 -C "ansible"



```
