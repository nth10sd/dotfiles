#!/bin/bash

function f_snapd_main() {
    f_out "Installing and setting up Snapd"

    $INSTALL_CMD snapd
}
