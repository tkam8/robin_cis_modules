#Robin node vars
[robin_systems]
${gcp_robin1_endpoint}
${gcp_robin2_endpoint}
${gcp_robin3_endpoint}

[robin_systems:vars]
# Enter in the user associated with the instance ssh key registered in GCP
ansible_user=f5user
# The location of the instance ssh key.
ansible_ssh_private_key_file=/drone/src/gcp/gcp_ssh_key

[all:vars]
# ep_list is used for defining the upstreams in the NGINX configuration. It can be given a default value and can be overriden later using set_fact in a role i.e. NGINX endpoints creation role
ep_list1=default('undefined')



# https://docs.ansible.com/ansible/latest/user_guide/intro_inventory.html