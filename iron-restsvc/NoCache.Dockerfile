FROM rust:1-stretch as first-stage
# Choose a workdir
WORKDIR /usr/src/iron-restsvc
# Copy sources
COPY . .
# Build app (bin will be in /usr/src/app/target/release/rust-lang-docker-multistage-build)
RUN cargo build --release

FROM debian:stretch-slim
# Copy bin from builder to this new image
COPY --from=first-stage /usr/src/iron-restsvc/target/release/iron-restsvc /bin/
# Default command, run app
CMD iron-restsvc