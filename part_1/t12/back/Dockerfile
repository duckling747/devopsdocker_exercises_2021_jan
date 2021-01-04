FROM debian
EXPOSE 8000
RUN apt update && apt install -y nodejs npm
COPY backend-example-docker/ .
RUN npm install
ENV FRONT_URL=http://localhost:5000
ENTRYPOINT ["npm", "start"]
