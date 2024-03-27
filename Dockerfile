FROM node:20.11.1-alpine3.19

WORKDIR /app

COPY ./dist ./dist
COPY ./node_modules ./node_modules

CMD ["node", "dist/main.js"]