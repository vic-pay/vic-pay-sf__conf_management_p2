#!/bin/sh
ansible-playbook \
    ../playbook.yml \
    -i ../inventory.yml \
    -t lxd \
    --ask-become-pass