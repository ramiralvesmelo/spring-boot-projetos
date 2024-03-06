# Projetos Java

Imagens utilizando as tecnologias listadas abaixo:

 - Spring Boot
 - Spring Security
 - JWT
 - BCrypt
 - Maven
 - Spring JPA
 - Thymeleaf
 - Rabbit MQ
 - Kafka 
 - Docker
 - Docker Compose

### Requisitos:

- Docker v25.0.xxx
- Docker Compose v2.24.xxx
- Git v1.8.x.x
- Windows 10 Pro (19045.4046) / Ubuntu 18.04 LTS (Bionic Beaver)

### Clonar Repositório

```sh 
$ git clone https://github.com/ramiralvesmelo/spring-boot-images.git
```

### Acessar o container

```sh 
$ docker login ghcr.io -u ramiralvesmelo 
```
_Obs: Solicitar a senha ao administrador._


### Microserviços com Spring Securit + JWT: 

1. Iniciar o projeto

```sh
$ docker compose -f ./microservico/docker-compose.yml up
```

2. Importar colletcion

    Importar a coleção <a href="spring-microservico/spring-microservico.postman_collection.json">spring-microservico.postman_collection.json</a> no Postman e seguir as instruções descritas nele.


### Mensageria com Kafka: 

1. Iniciar o projeto

```sh
$ docker compose -f ./kafka/docker-compose.yml up
```

2. Postman

    Importar a coleção <a href="spring-boot-kafka/spring-boot-kafka.postman_collection.json">spring-boot-kafka.json</a> no Postman e seguir as instruções descritas nele.


### Mensageria com Rabbit MQ: 

1. Iniciar o projeto

```sh
$ docker compose -f ./rabbitmq/docker-compose.yml up
```

2. Postman

    Importar a coleção <a href="spring-boot-rabbitmq/spring-boot-rabbitmq.postman_collection.json">spring-boot-rabbitmq.postman_collection.json</a> no Postman e seguir as instruções descritas nele.

    - UI Rabbit MQ

        - http://127.0.0.1:15672/

        - Usuario/Senha: guest/guest


### Apresentação Thymeleaf: 

1. Iniciar o projeto

```sh
$ docker compose -f ./thymeleaf/docker-compose.yml up
```

2. Acessar aplicação

```sh
http://localhost:8080
```

### Remover Credenciais

```sh
$ git config --global --unset credential.helper
```

### Limpar Docker

```sh
$ docker system prune --all --force --volumes
```