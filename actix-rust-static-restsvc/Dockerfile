FROM rust:1.48.0-slim-buster as first-stage

RUN apt-get update
RUN apt-get install musl-tools -y
RUN rustup target add x86_64-unknown-linux-musl

# Choose a workdir
WORKDIR /usr/src/rust-static-restsvc
# Copy sources
COPY . .
# Build project (exe will be in /usr/src/iron-restsvc/target/release/rust-static-restsvc)
#RUN cargo build --release
RUN RUSTFLAGS=-Clinker=musl-gcc cargo install -—release —target=x86_64-unknown-linux-musl

FROM debian:stretch-slim
# Copy bin from builder to this new image
COPY --from=first-stage /usr/src/rust-static-restsvc/target/release/rust-static-restsvc /bin/
# Default command, run app
CMD rust-static-restsvc