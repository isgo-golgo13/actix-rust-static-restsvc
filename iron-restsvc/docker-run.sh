#! /usr/bin/bash

docker run --name iron-restsvc -p 2000:2000 -p 3000:3000 -p 4000:4000 rust-iron-restsvc:1.0