#!/usr/bin/env bash

source utils/kubernetes_tools.sh

if [[ ! -z "$@" ]]; then
    echo "Running with custom command: ${@}"
    "$@"
else
    setup_kubernetes
    echo -e "\n#####################"
    echo "### Running tests ###"
    echo "#####################"
    pytest -ra -vvv --cov=scripts --cov-report xml --cov-report term
fi
