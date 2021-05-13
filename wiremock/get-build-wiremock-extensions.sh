#!/bin/bash

function build_docker {
    echo -e "Building java wiremock-extensions..."

    rm -rf wiremock-extensions

    git clone git@github.com:rondgrt/wiremock-extensions.git
    [ $?-ne 0 ] && exit_script "Git clone failed."

    cd wiremock-extensions

    mvn clean package -Dskiptests
    [ $?-ne 0 ] && exit_script "Build failed."

    echo ""
}

build_docker

exit 0