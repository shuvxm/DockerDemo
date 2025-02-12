FROM openjdk:22-jdk
ADD target/docker-demo.jar docker-demo.jar
ENTRYPOINT ["java", "-jar", "/docker-demo.jar"]

# create image so run this command on terminal
# docker build -t shuvxm/docker-demo:v3 . -> . (dot means) same file or else you hv to mention which drectory you want to work with
# docker run -p 8080:8080 shuvxm/docker-demo:v3