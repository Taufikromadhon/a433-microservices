# Untuk memubat docker image dari Dockerfile yang telah dibuat
sudo docker build -t item-app:v1 .


# Untuk melihat daftar image di lokal
sudo docker images

# Mengubah nama image agar sesuai dengan format docker hub
sudo docker tag item-app:v1 fikro12/item-app:v1

# Login ke akun docker via terminal
sudo docker login

# Akun Pribadi
# echo $PASSWORD_DOCKER_HUB | docker login -u fikro12 --password-stdin


# Akun Reviewer
echo $PASSWORD_DOCKER_HUB | docker login -u fikrihelmi17 --password-stdin

# push image ke Docker hub
sudo docker push fikro12/item-app:v1

