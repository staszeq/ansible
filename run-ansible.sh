#!/bin/bash

docker run -v $PWD:/opt/ansible -w /opt/ansible --rm -it ansible bash
