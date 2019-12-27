FROM rust:1.40.0-alpine3.10 as cargo-first-stage

WORKDIR /src/iron-restsvc
COPY Cargo.toml Cargo.toml

RUN mkdir src/
RUN cargo build --release
RUN rm -f target/release/deps/iron-restsvc *

COPY . .

RUN cargo build --release
RUN cargo install --path .


# Second (final) stage

FROM alpine:3.10

COPY --from=cargo-first-stage /usr/local/cargo/bin/iron-restsvc /usr/local/bin/iron-restsvc
CMD ["iron-restsvc"]
