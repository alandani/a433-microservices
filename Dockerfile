FROM node:14-alpine

RUN apk add --no-cache python3 g++ make

WORKDIR /app

COPY . .

RUN yarn install --production

CMD ["node", "app.js"]

EXPOSE 8080

ENV NODE_ENV=production DB_HOST=item-db

RUN npm install --production --unsafe-perm && npm run build