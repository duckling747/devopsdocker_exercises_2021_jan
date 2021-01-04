FROM debian
EXPOSE 5000
RUN apt update && apt install -y nodejs npm
COPY frontend-example-docker/ .
RUN npm install
ENV API_URL=http://localhost:8000
ENTRYPOINT ["npm", "start"]
