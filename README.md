# Icinga 2 test setup

## How to deploy

1. Adjust [variables.tf]
2. Optionally create an `.auto.tfvars` with the content `openstack_password = "<YOUR PASSWORD>"`
3. Create VMs: `terraform apply`
4. Based on the output of `terraform show` create an `inventory.txt` as show below
5. Collect the VMs' SSH keys: `ansible all -i inventory.txt -m ping --ssh-common-args="-o StrictHostKeyChecking=no -o UserKnownHostsFile=$(pwd)/known_hosts.txt"`
6. Provision the VMs (will take some time): `ansible-playbook -i inventory.txt --ssh-common-args="-o UserKnownHostsFile=$(pwd)/known_hosts.txt" playbook.yml`

### `inventory.txt` example

```
icinga-helper ansible_host=10.27.0.2 ansible_user=debian
[icingas]
icinga-master-1 ansible_host=10.27.0.46 ansible_user=debian
icinga-master-2 ansible_host=10.27.0.37 ansible_user=debian
icinga-sat-apple-2 ansible_host=10.27.0.12 ansible_user=debian
icinga-sat-apple-1 ansible_host=10.27.0.28 ansible_user=debian
icinga-sat-boskoop-2 ansible_host=10.27.0.11 ansible_user=debian
icinga-sat-boskoop-1 ansible_host=10.27.0.18 ansible_user=debian
icinga-sat-orange-2 ansible_host=10.27.0.42 ansible_user=debian
icinga-sat-orange-1 ansible_host=10.27.0.23 ansible_user=debian
[agents]
icinga-agents-master ansible_host=10.27.0.25 ansible_user=debian
icinga-agents-sat-apple ansible_host=10.27.0.6 ansible_user=debian
icinga-agents-sat-boskoop ansible_host=10.27.0.8 ansible_user=debian
icinga-agents-sat-orange ansible_host=10.27.0.4 ansible_user=debian
```
