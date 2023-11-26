# menggunakan image node js versi 14
FROM node:14-alpine

RUN apk add --no-cache python3 g++ make

# set working directory di folder /app
WORKDIR /app

# menyalin seluruh source code ke working directory
COPY . .

RUN yarn install --production

# eksekusi file app.js
CMD ["node", "app.js"]

# set env ke production dan menggunakan database host container item-db
ENV NODE_ENV=production DB_HOST=item-db

# install dependency dan build
RUN npm install --production --unsafe-perm && npm run build

# setting port 8080
EXPOSE 8080

# perintah jalankan server
RUN npm start