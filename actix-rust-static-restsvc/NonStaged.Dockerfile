FROM rust:1.48.0-slim-buster
# Choose a workdir
WORKDIR /usr/src/rust-static-restsvc
# Copy sources
COPY . .
# Build project (exe will be in /usr/src/iron-restsvc/target/release/rust-static-restsvc)
RUN cargo build --release
# Default command, run app
CMD /usr/src/iron-restsvc/target/release/rust-static-restsvc