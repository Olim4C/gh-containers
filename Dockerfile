FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-learn
ENV MONGODB_CLUSTER_ADDRESS dev.z5gzxhn.mongodb.net
ENV MONGODB_USERNAME camiloponce
ENV MONGODB_PASSWORD 3zotFaPtcrAgoqNG

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]