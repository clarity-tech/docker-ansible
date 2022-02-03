FROM python:3.7.12-slim-bullseye

RUN pip install pip --upgrade
RUN pip install ansible

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    sshpass

RUN apt-get update -y && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y openssh-client

RUN ansible-galaxy collection install inspur.sm community.general

RUN ansible-galaxy collection list

WORKDIR /work
