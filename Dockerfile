FROM ubuntu:22.04

RUN apt-get update && apt-get install sudo python3 python3-pip -y -qq \
 && useradd -ms /bin/bash me \
 && usermod -aG sudo me \
 && echo "me ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER me
WORKDIR /home/me

RUN python3 -m pip install --user ansible

COPY . .

RUN /home/me/.local/bin/ansible-playbook cloud.yml programming.yml infra.yml misc.yml --tags ubuntu