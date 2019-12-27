#! /usr/bin/bash

VERSION=$1

show_usage() {
    [ "$VERSION" == "" ] || [ $# -gt 1 ]; then
}

show_usage
cargo build $VERSION