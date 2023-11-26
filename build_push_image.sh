# membuat docker image
docker build -t item-app:v1 .

# melihat docker image
docker image list

# merubah nama image sesuai format docker hub
docker tag item-app:v1 alandani/item-app:v1

# login ke docker hub
docker login -u alandani

# upload image
docker push alandani/item-app:v1