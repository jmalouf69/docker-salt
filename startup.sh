#!/usr/bin/env bash
salt-master -d
salt-minion -d

salt-key -F master

tail -f /dev/null
