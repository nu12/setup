# setup

This repo is the automation of my work/study setup. All the choices made are heavily based on my specific needs - feel free to fork and modify based on yours.

## Getting started

Install git, homebrew and ansible to be able to run the playbooks. 

On Ubuntu, run:
```
apt-get install git python3 python3-pip pipx && pipx install --include-deps ansible
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Follow the directions to add the homebrew bin folder to the PATH with the `echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> your-rc-file` command.

On MacOS, run:
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install git ansible
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
ansible-playbook setup.yml --tags <platform>
```

## Available platforms

Available platforms are:
* ubuntu
* macos

Here is a list of all softwares included for each platform:

|Software|ubuntu|macos|Dependencies
|---|---|---|---|
|awscli|&check;|&check;|-|
|azure-cli|&check;|&check;|-|
|brave-browser|&check;|&check;|-|
|docker|&check;|&check;|-|
|flameshot|&check;||-|
|google-cloud-cli|&check;|&check;|-|
|gimp|&check;|&check;|-|
|golang|&check;|&check;|mise|
|helm|&check;|&check;|-|
|java|&check;|&check;|mise|
|jq|&check;|&check;|-|
|kubectl|&check;|&check;|-|
|make|&check;|&check;|-|
|mise|&check;|&check;|-|
|node|&check;|&check;|mise|
|rand|&check;|&check;|-|
|remmina|&check;||-|
|ruby|&check;|&check;|mise|
|snap|&check;||-|
|sublimetext|&check;|&check;|-|
|terraform|&check;|&check;|mise|
|tilix|&check;||-|
|tree|&check;|&check;|-|
|trivy|&check;|&check;|-|
|veracrypt|&check;|&check;|-|
|vlc|&check;|&check;|-|
|vscode|&check;|&check;|-|
|warp|&check;|&check;|-|
|wget|&check;|&check;|-|
|xsel|&check;||-|
|zsh/oh-my-zsh|&check;|&check;|-|
