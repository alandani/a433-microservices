# membuat docker image
docker build -t karsajobs-ui:latest .

# melihat docker image
docker image list

# merubah nama image sesuai format docker hub
docker tag karsajobs-ui:latest alandani/karsajobs-ui:latest

# login ke docker hub
docker login -u alandani

# upload image
docker push alandani/karsajobs-ui:latest