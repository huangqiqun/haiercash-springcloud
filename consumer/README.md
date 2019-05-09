Docker
gradle clean build dockerBuilder --info
docker run -d --name consumer -p 8200:8200 haiercash-springcloud/consumer:latest