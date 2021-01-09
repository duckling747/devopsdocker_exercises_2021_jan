FROM rust:slim as build
COPY . /usr/src/buttons
RUN cargo install --path /usr/src/buttons

FROM debian:buster-slim
COPY --from=build /usr/local/cargo/bin/buttons /usr/local/bin/buttons
WORKDIR /usr/src/buttons
COPY --from=build /usr/src/buttons/templates /usr/src/buttons/templates
EXPOSE 8000
CMD ["buttons"]
