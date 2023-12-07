# Menggunakan node versi 14
FROM node:14

# Membuat direktori /app
WORKDIR /app

# Copy folder
COPY . .

# Set production environment
ENV NODE_ENV=production

# Set host database
ENV DB_HOST=item-db

# Install dependencies
RUN npm install --production --unsafe-perm && npm run build

# Mengexpose port 8080
EXPOSE 8080

# Jalanin perintah npm start
CMD ["npm", "start"]
