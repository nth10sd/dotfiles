#!/bin/bash

function f_docker_main() {
    f_out "Installing and setting up Docker"

    $INSTALL_CMD docker docker-compose
    sudo usermod -aG docker ${SCRIPT_RUN_USER}
}
