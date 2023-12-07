#!/bin/bash

# Login info
echo "=== Login ke ghcr.io ==="
echo "Username: "
read username
echo "Password: "
read -s password

# Perintah untuk membuat Docker image dari Dockerfile
docker build -t ghcr.io/$username/item-app:v1 .

# Melihat daftar image di lokal
docker images | grep item-app

# Tag image
docker tag item-app:v1 $username/item-app:v1

# Login ke ghcr.io
docker login -u $username -p $password ghcr.io

# Mengunggah image ke ghcr.io
docker push ghcr.io/$username/item-app:v1

# Logout dari ghcr.io
docker logout ghcr.io

docker-compose up -d > log.txt 2>&1
