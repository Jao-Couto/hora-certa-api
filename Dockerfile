FROM node:lts

WORKDIR /api

COPY package.json package-lock.json ./
RUN npm install

COPY . .
CMD ["npm", "run", "start:dev"]