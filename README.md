# actix-rust-static-restsvc
Rust and Iron (Rust Async Web Toolkit) and Docker REST Service

## To compile and execute the project service

At root of the project (actix-rust-static-restsvc directory), run: 

**cargo clean and cargo run** as this is the equivalent of **`cargo build` and `./target/debug/actix-rust-static-restsvc`**.

And go to: **`http:\\localhost:8080`**

This will show the static resource `index.html` page.


## To build the actix-rust-static-restsvc Docker container image

At root of the project ('actix-rust-static-restsvc' directory), run: 

**`docker build -t actix-rust-static-restsvc:1.0 -f NoCache.Dockerfile`** 

To execute the provided shell script to build the Docker container image, run:

**`sh docker-kr8.sh`**.


## To run the actix-rust-static-restsvc Docker container

**`docker run --name actix-rust-static-restsvc -p 8080:8080 actix-rust-static-restsvc:1.0`

