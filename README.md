# setup

This repo is the automation of my work/study setup. All the choices made were heavily based on my specific needs.

## Getting started

Install git to clone this repo and python and ansible to be able to run the playbooks:
```
apt-get install git python3 python3-pip && python3 -m pip install --user ansible
```

To clone this repo:
```
git clone https://github.com/nu12/setup && cd setup
```

## Run the setup

To setup playbook in a ubuntu host:
```
ansible-playbook setup.yml --tags ubuntu
```

To run the playbook for a given platform:
```
ansible-playbook <playbook>.yml --tags <platform>
```

## Available platforms

At the moment the only available platform is `ubuntu`. I may or may not add more variants as needed. In any case, feel free to add more platforms to cover your needs and open a PR =]