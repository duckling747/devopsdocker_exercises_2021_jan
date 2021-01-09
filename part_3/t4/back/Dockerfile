FROM debian:buster-slim
EXPOSE 5000
WORKDIR /app
RUN apt update && \
    apt install -y curl git && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash && \
    apt install -y nodejs && \
    git clone https://github.com/docker-hy/backend-example-docker.git && \
    cd ./backend-example-docker && \
    npm install && \
    apt autoremove --purge -y git curl && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -m app && \
    chown -R app /app/backend-example-docker
USER app
WORKDIR /app/backend-example-docker
ENTRYPOINT ["npm", "start"]
