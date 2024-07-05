# membuat docker image
docker build -t shipping-service:latest .

# melihat docker image
docker image list

# merubah nama image sesuai format docker hub
docker tag shipping-service:latest alandani/shipping-service:latest

# login ke docker hub
docker login -u alandani

# upload image
docker push alandani/shipping-service:latest