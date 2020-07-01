FROM node:9-slim
WORKDIR /
COPY package.json /
RUN npm install
COPY . ./
EXPOSE 8081
CMD ["node","index.js"]





