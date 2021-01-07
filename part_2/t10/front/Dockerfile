FROM debian
EXPOSE 5000
RUN apt update && apt install -y nodejs npm
COPY frontend-example-docker/ .
RUN npm install
ENTRYPOINT ["npm", "start"]
