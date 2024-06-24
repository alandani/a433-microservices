# membuat docker image
docker build -t karsajobs:latest .

# melihat docker image
docker image list

# merubah nama image sesuai format docker hub
docker tag karsajobs:latest alandani/karsajobs:latest

# login ke docker hub
docker login -u alandani

# upload image
docker push alandani/karsajobs:latest