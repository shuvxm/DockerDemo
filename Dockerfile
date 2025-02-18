rFROM openjdk:22-jdk
ADD target/docker-demo-app.jar docker-demo-app.jar
ENTRYPOINT ["java", "-jar", "/docker-demo-app.jar"]


#docker-compose up --build
# docker-compose down -> to rebuild the container
# create image so run this command on terminal
# docker build -t shuvxm/docker-demo:v3 . -> . (dot) refers to same file or else you hv to mention which drectory you want to work with
# docker run -p 8080:8080 shuvxm/docker-demo:v3
