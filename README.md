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

5. **Sircro-Serviços**

    Arquitetura de micro-serviços com a integração entre APIs com o uso de JWT (JSON Web Tokens).

> [!IMPORTANT]
> Necessário ter instalado na máquina as ferramentas abaixo:

- Docker v25.0.xxx
- Docker Compose v2.24.xxx
- Git v1.8.x.x
- Sistema Windows 10 Pro (19045.4046) ou Ubuntu 18.04 LTS (Bionic Beaver)


> [!TIP]
> Vamos iniciar os procedimentos para testar os projetos.

1. Clonar o projeto

```sh
$ git clone https://github.com/ramiralvesmelo/spring-boot-images.git
cd spring-boot-images
```

2. Autenticar no Container Registry do GitHub
```sh
$ docker login ghcr.io -u ramiralvesmelo 
```

> [!IMPORTANT]
> A chave de acesso dever ser solicitada ao administrador da conta.

