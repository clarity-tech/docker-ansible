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
