# Untuk memubat docker image dari Dockerfile yang telah dibuat
docker build -t item-app:v1 .


# Untuk melihat daftar image di lokal
docker images

# Mengubah nama image agar sesuai dengan format docker hub
docker tag item-app:v1 fikro12/item-app:v1


# Login ke akun Dockerhub Pribadi via terminal dengan password yang sudah terlebih dahulu dikonfigurasi
echo $PASSWORD_DOCKER_HUB | docker login -u fikro12 --password-stdin


# Login ke akun Dockerhub Reviewer via terminal dengan password yang sudah terlebih dahulu dikonfigurasi
# echo $PASSWORD_DOCKER_HUB | docker login -u fikrihelmi17 --password-stdin

# push image ke Docker hub pribadi
docker push fikro12/item-app:v1

