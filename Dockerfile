# Menggunakan image node versi 14-alpine
FROM node:14-alpine

# Menentukan bahwa working directory untuk container adalah /app
WORKDIR /app

# Menyalin seluruh soure code ke working directory container 
COPY . .

# Menentukan agar aplikasi berjalan dalam production mode dan menggunakan container bernama item-db sebagai db host
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependencies untuk production dan kemudian build aplikasi 
RUN npm install --production --unsafe-perm && npm run build

# Mengeksekusi perintah untuk menjalankan aplikasi
CMD ["npm", "start"]

# Port yang digunakan oleh aplikasi adalah 8080 
EXPOSE 8080
