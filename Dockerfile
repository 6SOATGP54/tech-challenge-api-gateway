FROM alpine:3.19
LABEL maintainer="https://github.com/6SOATGP54"

WORKDIR /home

#Envoiroments
ENV URL_PEDIDO=""  \
    PORTA_PEDIDO="" \
    URL_PRODUTO=""  \
    PORTA_PRODUTO="" \
    URL_PAGAMENTO=""  \
    PORTA_PAGAMENTO=""

# updates source list
RUN apk update

# install required tools
RUN apk add --no-cache git bash openjdk17-jdk maven

# Project's setup
COPY . /home/tech-challenge-ms-gateway
WORKDIR /home/tech-challenge-ms-gateway

# Start Project
RUN mvn -DskipTests install
EXPOSE 8091

CMD ["java", "-jar", "/home/tech-challenge-ms-gateway/target/ms-gateway-0.0.1-SNAPSHOT.jar","&"]