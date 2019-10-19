# perl-catalyst

Perl + Catalyst Framework + PostgreSQL

Preinstalled drivers for PostgreSQL

## docker-compose example

```
version: '3'

services:
  perl_db:
    image: postgres
    volumes:
        - "./tmp_docker_db:/var/lib/postgresql/data"
    restart: always
    environment:
        POSTGRES_PASSWORD: your_secure_password
    networks:
        - perl_net

  perl_catalyst_server:
    image: freehackquest/perl-catalyst:latest
    restart: always
        - "./server:/root/server"
    command: "./server.pl"
    ports:
        - "3000:3000"
    restart: always
    links:
        - "perl_db"
    networks:
        - perl_net

networks:
  perl_net:
    driver: bridge
```


