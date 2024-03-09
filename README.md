# Projetos Java

> [!NOTE]
> A proposta deste repositório é fornecer com base na framework do Spring Boot exemplos práticos:

1. **Mensageria com Rabbit MQ**

    Sistemas de comunicação assíncrona entre sistemas distribuidos utilizando o protocole AMQP.

2. **Mensageria com Kafka**

    Sistemas de comunicação assíncrona entre sistemas distribuidos, utilizando tópicos (topics) e divididos em partições (partitions) .

3. **Spring Security LDAP**

    Framework de autenticação e autorização via LDAP ( Apache OpenLdap ) e Bcrypt (Mysql).

4. **Visualização**

    Engine Thymeleaf para desenvolvimento web baseado em XML, XHTML e HTML5..

5. **Arquitetura Micro-Serviços**

    Arquitetura em micro-serviços com a integração entre APIs com o uso de JWT (JSON Web Tokens).

> [!IMPORTANT]
> Necessário ter instalado na máquina as ferramentas abaixo:

- Docker v25.0.xxx
- Docker Compose v2.24.xxx
- Git v1.8.x.x
- Postman
- Sistema Windows 10 Pro (19045.4046) ou Ubuntu 18.04 LTS (Bionic Beaver)

## Iniciar Configuração

É preciso baixar o repositório e se autenticar no GHCR do Github para que seja possível baixar as imagens do docker.

1. Clonar o projeto

```sh
$ git clone https://github.com/ramiralvesmelo/spring-boot-images.git
$ cd spring-boot-images
```

2. Autenticar no Container Registry do GitHub

> [!IMPORTANT]
> A chave de acesso dever ser solicitada ao administrador da conta.

```sh
$ docker login ghcr.io -u ramiralvesmelo 
```

## Importar Collection 

Baixar e importar as collections abaixo para Postman.

- <a href="spring-boot-kafka/spring-boot-kafka.postman_collection.json">spring-boot-kafka.json</a>
- <a href="spring-microservico/spring-microservico.postman_collection.json">spring-microservico.json</a>
- <a href="spring-boot-rabbitmq/spring-boot-rabbitmq.postman_collection.json">spring-boot-rabbitmq.json</a>


## Iniciar Docker-Compose

Para iniciar as imagens é preciso estar na pasta raiz do projeto  e executar os comandos individualmente.

```sh
# Iniciar projeto Micro-Serviços
$ docker compose -f ./microservico/docker-compose.yml up

# Iniciar projeto Kafka
$ docker compose -f ./kafka/docker-compose.yml up

# Iniciar projeto Rabbit MQ
$ docker compose -f ./rabbitmq/docker-compose.yml up

# Iniciar projeto OpenLdap
$ docker compose -f ./openldap/docker-compose.yml up

```

## Acessos

Os testes podem ser feitos pelo Postman e acompanhados nos endereços informados abaixo.

### Kafka UI

- http://127.0.0.1:8080/

### Rabbit MQ UI

- http://127.0.0.1:15672/ 


### Spring Security LDAP

 - http://127.0.0.1:8080/
 - Apache Directory Studio

## Limpar Ambiente

Caso queira você pode remover as imagens e credencial da máquina executando os comandos.

> [!CAUTION]
> Os comando irão remover **TODAS** as credências do GitHub e imagens existentes na sua máquina.

```sh
$ git config --global --unset credential.helper
$ docker system prune --all --force --volumes
```