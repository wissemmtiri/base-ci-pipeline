FROM node:20.17.0-alpine3.20

WORKDIR /app

COPY ./dist ./dist
COPY ./node_modules ./node_modules

CMD ["node", "dist/main.js"]