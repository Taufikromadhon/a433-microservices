# Untuk membuat docker image dari Dockerfile yang telah dibuat
docker build -t fikro12/karsajobs:latest .

# sleep 1m

# Login ke akun Dockerhub Pribadi via terminal dengan password yang sudah terlebih dahulu dikonfigurasi
echo $PASSWORD_DOCKER_HUB | docker login -u fikro12 --password-stdin

sleep 1m

# push image ke Docker hub pribadi
docker push fikro12/karsajobs:latest
