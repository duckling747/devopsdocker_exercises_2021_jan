FROM rust:slim as build
WORKDIR /usr/src/buttons
COPY . .
RUN cargo build --release

FROM busybox:glibc
COPY so/ /usr/lib
COPY --from=build /usr/src/buttons/target/release/buttons /usr/local/bin/buttons
WORKDIR /usr/src/buttons
COPY --from=build /usr/src/buttons/templates /usr/src/buttons/templates
ENV LD_LIBRARY_PATH="/usr/lib"
EXPOSE 8000
RUN adduser -D app && \
    chown -R app /usr/src/buttons/templates && \
    chown -R app /usr/local/bin/buttons
USER app
CMD ["buttons"]
