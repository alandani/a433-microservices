# membuat docker image
docker build -t order-service:latest .

# melihat docker image
docker image list

# merubah nama image sesuai format docker hub
docker tag order-service:latest alandani/order-service:latest

# login ke docker hub
docker login -u alandani

# upload image
docker push alandani/order-service:latest