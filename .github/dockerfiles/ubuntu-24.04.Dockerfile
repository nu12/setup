FROM ubuntu:24.04

RUN apt-get update && apt-get install sudo git curl python3 python3-pip pipx -y -qq \
 && useradd -ms /bin/bash me \
 && usermod -aG sudo me \
 && echo "me ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER me
WORKDIR /home/me

RUN pipx install --include-deps ansible
RUN NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

COPY . .
