# rust-iron-restsvc
Rust and Iron (Rust Async Web Toolkit) and Docker REST Service

## To compile and execute the project service

At root of the project (iron-restsvc directory), issue either of the two ways to compile and run the rust service: 

`cargo clean and cargo build` followed with `./target/debug/iron-restsvc`as this starts the server.

OR

`cargo clean and cargo run` as this is the equivalent of the previous approach of `cargo build` and `./target/debug/iron-restsvc`.

Proceed to open a browser and enter `http://localhost:2000` or `http://localhost:3000:3000` or `http://localhost:4000`

## To compile the project service as a Docker service

At root of the project (iron-restsvc directory), issue `docker build -t rust-iron-restsvc:1.0 -f NoCache.Dockerfile` or execute the provided shell script `sh docker-kr8.sh` as this executes the previous raw Docker instruction.

## To execute the project service as a Docker service

At root of the project (iron-restsvc directory), issue `docker run --name rust-iron-restsvc -p 2000:2000 -p 3000:3000 -p 4000:4000 rust-iron-restsvc:1.0`

