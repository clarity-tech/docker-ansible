# Docker Ansible container

[![Build-Docker-Image](https://github.com/clarity-tech/docker-ansible/actions/workflows/docker-publish.yml/badge.svg)](https://github.com/clarity-tech/docker-ansible/actions/workflows/docker-publish.yml) [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is a docker container with Ansible configured.
 It can be used with
to deploy playbooks.

Python  3.7.6

The image has following installed versions


| Package            | Version    |
|------------------- | -----------|
|ansible             | 2.11.6     |
|jinja               | 3.0.1      |
-----------------------------------

pip version 21.1.2

# /usr/local/lib/python3.7/site-packages/ansible_collections
| Collection           |    Version |
|------------------- | -----------|
amazon.aws           |         1.5.1  
ansible.netcommon    |         2.5.0  
ansible.posix        |         1.3.0  
ansible.utils        |         2.4.3  
ansible.windows      |         1.8.0  
arista.eos           |         2.2.0  
awx.awx              |         19.4.0 
azure.azcollection   |         1.10.0 
check_point.mgmt     |         2.2.0  
chocolatey.chocolatey|         1.1.0  
cisco.aci            |         2.1.0  
cisco.asa            |         2.1.0  
cisco.intersight     |         1.0.18 
cisco.ios            |         2.6.0  
cisco.iosxr          |         2.6.0  
cisco.meraki         |         2.5.0  
cisco.mso            |         1.2.0  
cisco.nso            |         1.0.3  
cisco.nxos           |         2.8.2  
cisco.ucs            |         1.6.0  
cloudscale_ch.cloud  |         2.2.0  
community.aws        |         1.5.0  
community.azure      |         1.1.0  
community.crypto     |         1.9.8  
community.digitalocean        1.13.0 
community.docker     |         1.10.2 
community.fortios    |         1.0.0  
community.general    |         3.8.3  
community.google     |         1.0.0  
community.grafana    |         1.3.0  
community.hashi_vault|         1.5.0  
community.hrobot     |         1.2.1  
community.kubernetes |         1.2.1  
community.kubevirt   |         1.0.0  
community.libvirt    |         1.0.2  
community.mongodb    |         1.3.2  
community.mysql      |         2.3.2  
community.network    |         3.0.0  
community.okd        |         1.1.2  
community.postgresql |         1.6.0  
community.proxysql   |         1.3.0  
community.rabbitmq   |         1.1.0  
community.routeros   |         1.2.0  
community.skydive    |         1.0.0  
community.sops       |         1.2.0  
community.vmware     |         1.17.0 
community.windows    |         1.8.0  
community.zabbix     |         1.5.1  
containers.podman    |         1.9.0  
cyberark.conjur      |         1.1.0  
cyberark.pas         |         1.0.13 
dellemc.enterprise_sonic|      1.1.0  
dellemc.openmanage   |         3.6.0  
dellemc.os10         |         1.1.1  
dellemc.os6          |         1.0.7  
dellemc.os9          |         1.0.4  
f5networks.f5_modules|         1.13.0 
fortinet.fortimanager|         2.1.4  
fortinet.fortios     |         2.1.3  
frr.frr              |         1.0.3  
gluster.gluster      |         1.0.2  
google.cloud         |         1.0.2  
hetzner.hcloud       |         1.6.0  
hpe.nimble           |         1.1.4  
ibm.qradar           |         1.0.3  
infinidat.infinibox  |         1.3.0  
inspur.sm            |         1.3.0  
junipernetworks.junos|         2.8.0  
kubernetes.core      |         1.2.1  
mellanox.onyx        |         1.0.0  
netapp.aws           |         21.7.0 
netapp.azure         |         21.10.0
netapp.cloudmanager  |         21.12.1
netapp.elementsw     |         21.7.0 
netapp.ontap         |         21.14.1
netapp.um_info       |         21.8.0 
netapp_eseries.santricity|     1.2.13 
netbox.netbox        |         3.4.0  
ngine_io.cloudstack  |         2.2.2  
ngine_io.exoscale    |         1.0.0  
ngine_io.vultr       |         1.1.0  
openstack.cloud      |         1.5.3  
openvswitch.openvswitch|       2.1.0  
ovirt.ovirt          |         1.6.6  
purestorage.flasharray|        1.11.0 
purestorage.flashblade|        1.8.1  
sensu.sensu_go        |        1.12.0 
servicenow.servicenow |        1.0.6  
splunk.es             |        1.0.2  
t_systems_mms.icinga_director| 1.26.0 
theforeman.foreman |           2.2.0  
vyos.vyos          |           2.6.0  
wti.remote         |           1.0.3  

# /root/.ansible/collections/ansible_collections
|Collection      |  Version|
|----------------- |-------|
|community.general |4.4.0  |
|inspur.sm         |2.0.0  |


## Usage

After pulling the image from registry, go into any ansible folder and run your plays


```
docker run --rm -it -v "$PWD:/work:ro" ghcr.io/clarity-tech/docker-ansible ansible
```
The above command will run ansible

```
docker run --rm -it -v "$PWD:/work:ro" ghcr.io/clarity-tech/docker-ansible ansible-playbook
```

## TODO
more examples
To use with gitlab ci

## As an alias

You can even create an alias like below in your `.bashrc` or `.zshrc` file depending on your shell:

```
alias ans='docker run --rm -it -v "$PWD:/work:ro" ghcr.io/clarity-tech/docker-ansible ansible'

alias ansp='docker run --rm -it -v "$PWD:/work:ro" ghcr.io/clarity-tech/docker-ansible ansible-playbook'

alias ansible='docker run -v "${PWD}":/work:ro --rm ghcr.io/clarity-tech/docker-ansible'

alias ansible-playbook='docker run -v "${PWD}":/work:ro -v ~/.ansible/roles:/root/.ansible/roles -v ~/.ssh:/root/.ssh:ro --rm ghcr.io/clarity-tech/docker-ansible ansible-playbook'

alias ansible-vault='docker run -v "${PWD}":/work:ro --rm ghcr.io/clarity-tech/docker-ansible ansible-vault'
```

then you can just use `ans` like a normal command
