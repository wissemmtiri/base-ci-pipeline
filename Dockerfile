FROM node:lts-alpine

WORKDIR /app

COPY ./dist ./dist
COPY ./node_modules ./node_modules

CMD ["node", "dist/main.js"]