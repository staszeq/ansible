#!/bin/bash

ROLENAME=$1

if [ -z ${ROLENAME} ]; then
  echo "please provide role name as parameter! (eg. create_ansible_role.sh apache)"
  exit 1
fi

mkdir -p ../roles/${ROLENAME}/{tasks,handlers,templates,files,vars,defaults,meta}
