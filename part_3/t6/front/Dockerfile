FROM node:alpine as builder
WORKDIR /app
RUN apk add --no-cache git && \
    git clone https://github.com/docker-hy/frontend-example-docker.git && \
    cd ./frontend-example-docker && \
    npm install && \
    npm run build

FROM node:alpine
EXPOSE 5000
WORKDIR /app
COPY --from=builder /app/frontend-example-docker/dist ./dist
RUN npm install -g serve && \
    rm -f /sbin/apk && \
    rm -rf /etc/apk && \
    rm -rf /lib/apk && \
    rm -rf /usr/share/apk && \
    rm -rf /var/lib/apk && \
    chown -R node /app

USER node
ENTRYPOINT ["serve", "-s", "-l", "5000", "/app/dist"]
