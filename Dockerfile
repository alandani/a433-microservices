# menggunakan image node v18 alpline
FROM node:18-alpine

# membuat dan menset working direktori di /app
WORKDIR /app

# mengcopy semua file ke workdir
COPY . .

# menjalan npm install
RUN npm install

# menjalankan bash script wait 
RUN apk add --no-cache bash
RUN wget -O /bin/wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh
RUN chmod +x /bin/wait-for-it.sh

# expose port 3001 sesuai env
EXPOSE 3001

# menjalankan node index.js
CMD ["node", "index.js"]