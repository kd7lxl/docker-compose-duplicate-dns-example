docker network create nginx-proxy
docker-compose --version
cd service1
docker-compose up -d
cd ../service2
docker-compose up
