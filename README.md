



[TOC]

# OpenQA setup

This project aims to automate the deployment of an openQA instance on a Proxmox VM.

:thinking: But what is [openQA](http://open.qa/)? It is an open-source automated testing platform for software quality control, designed to test complete operating systems and applications. It simulates user interactions (such as mouse and keyboard) in virtual environments to run automated tests on graphical interfaces and command lines. Developed by openSUSE, it is particularly used to test Linux distributions.

## Documentation and relevant links

* http://open.qa/docs/

## Prerequisites

```shell
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```



## Terraform

Provisioning of the **openqa-playground** VM in Proxmox, the VM that will be deployed relies on a **debian-12-cloudinit-template** template.

```shell
cd ./terraform/proxmox
terraform init
terraform apply
```



## Ansible

The installation and configuration of the openQA server is done through an Ansible playbook.

```shell
cd ./ansible
ansible-playbook install-and-configure-openqa.yml
```
