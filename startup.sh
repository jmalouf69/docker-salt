#!/usr/bin/env bash
salt-master -d
salt-minion -d

salt-key -F master

while [ 1 eq 1]
do
  sleep 5
done
