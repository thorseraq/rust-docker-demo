FROM rust:1.59 as build
WORKDIR /app
COPY . .
RUN cargo build --release
CMD ["./target/release/rust-docker-demo"]
FROM debian:buster-slim
WORKDIR /app
COPY --from=build /app/target/release/rust-docker-demo ./rust-docker-demo
CMD ["./rust-docker-demo"]