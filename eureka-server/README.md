eureka server：
http://localhost:8761/

Docker
gradle clean build dockerBuilder --info
docker run -d --name eureka-server -p 8761:8761 haiercash-springcloud/eureka-server:latest

#容器配置
microservice/eureka-server:latest  
eureka-server  
8761