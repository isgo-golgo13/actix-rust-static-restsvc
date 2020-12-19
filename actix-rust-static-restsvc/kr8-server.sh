#! /usr/bin/bash

# sh kr8-server.sh (no args for debug) or --release for release service
DEBUG=""
RELEASE=--release
cargo build $DEBUG  