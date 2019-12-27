FROM rust:1-stretch as first-stage
# Choose a workdir
WORKDIR /usr/src/iron-restsvc
# Copy sources
COPY . .
# Build project (exe will be in /usr/src/iron-restsvc/target/release/iron-restsvc)
RUN cargo build --release

FROM debian:stretch-slim
# Copy bin from builder to this new image
COPY --from=first-stage /usr/src/iron-restsvc/target/release/iron-restsvc /bin/
# Default command, run app
CMD iron-restsvc