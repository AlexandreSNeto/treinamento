## Criar um container de PostgreSQL

```
docker run -d \
    -e DB_NAME=biblioteca \
    -e DB_USER=biblioteca \
    -e DB_PASS=biblioteca \
    -p 5552:5432 --name biblioteca-db alexandresneto/postgres-db
```

## Fazer download do Liquibase 

http://download.liquibase.org/download/?frm=n

Descompactar o conteúdo do ZIP e copiar toda a pasta `lib`, o arquivo `liquibase.jar` e o arquivo `liquibase` (ou `liquibase.bat` para usuários Windows) para a raiz deste projeto.

## Como usar

```
liquibase --defaultsFile=config/postgres.properties [COMANDO]
```
