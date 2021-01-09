FROM node:alpine
EXPOSE 5000
WORKDIR /app
RUN apk add --no-cache git && \
    git clone https://github.com/docker-hy/backend-example-docker.git && \
    cd ./backend-example-docker && \
    npm install && \
    apk del git && \
    rm -f /sbin/apk && \
    rm -rf /etc/apk && \
    rm -rf /lib/apk && \
    rm -rf /usr/share/apk && \
    rm -rf /var/lib/apk && \
    chown -R node /app/backend-example-docker
USER node
WORKDIR /app/backend-example-docker
ENTRYPOINT ["npm", "start"]
