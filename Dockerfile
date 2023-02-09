FROM node:16.18.0-alpine3.15
WORKDIR /app
#COPY package.json ./
#COPY package-lock.json ./
COPY . .
RUN npm i --legacy-peer-deps
EXPOSE 3000
RUN npm install -g serve
RUN npm run build:dev
CMD ["serve","-s","build"]
