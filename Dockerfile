# Ansible-Desktop
# This is used to test the whole playbook against a docker container
# 
# podman build .
# 
FROM fedora:33
WORKDIR /usr/local/ansible-desktop
COPY . ./
RUN dnf install ansible -y
RUN ansible-playbook -i "localhost," -c local site.yml -e 'ansible_python_interpreter=/usr/bin/python3' -e "testing=true"