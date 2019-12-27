FROM rust:1-stretch
# Choose a workdir
WORKDIR /usr/src/iron-restsvc
# Copy sources
COPY . .
# Build project (exe will be in /usr/src/iron-restsvc/target/release/iron-restsvc)
RUN cargo build --release
# Default command, run app
CMD /usr/src/iron-restsvc/target/release/iron-restsvc