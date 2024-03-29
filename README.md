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

To run all playbooks in a ubuntu host:
```
ansible-playbook cloud.yml programming.yml infra.yml misc.yml --tags ubuntu
```

To run a specific playbook for a given platform:
```
ansible-playbook <playbook>.yml --tags <platform>
```

## Available playbooks

The following plays are availables:

* Dependencies (Common) - runs as part of every play
  * lsb-core
  * software-properties-common
  * libssl-dev
  * apt-transport-https 
  * ca-certificates
  * curl
  * gnupg2

* Programming
  * jq
  * make
  * sublime-text
  * vscode
  * Ruby
  * Golang
  * Java
  * Node
  * Warp (Terminal)

* Infra
  * docker
  * terraform
  * packer
  * kubernetes
  * minikube
  * trivy

* Cloud
  * gcloud (GCP CLI)
  * aws (AWS CLI)
  * az (Azure CLI)

* Misc
  * zsh
  * wget
  * tree
  * snap
  * unzip
  * gimp
  * vlc
  * flameshot
  * tilix
  * virtualbox
  * rand
  * brave
  * veracrypt

## Available platforms

At the moment the only available platform is `ubuntu`. I may or may not add more variants as needed. In any case, feel free to add more platforms to cover your needs and open a PR =]