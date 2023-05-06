FROM rust:1.59 as build
ENV CARGO_TERM_COLOR="always"
WORKDIR /app
COPY . .
RUN ls -la > dir.txt
RUN cargo build --release
FROM debian:buster-slim
ENV CARGO_TERM_COLOR="always"
WORKDIR /app
COPY --from=build /app/target/release/rust-docker-demo ./rust-docker-demo
COPY --from=build /app/docker/scripts/start.sh ./start.sh
RUN chmod +x ./start.sh
CMD ["./start.sh"]
