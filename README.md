# servilimar.sql
Por Daniel Escobar Escobar - 2437924 - Tecnología en Desarrollo de Software, Universidad del Valle

Base de datos para el sistema de turnos de ServiLimar, hecho con PostgreSQL, pgAdmin y Docker

## Comandos Docker

Levantar PostgreSQL:
docker run --name servilimar_db -e POSTGRES_USER=ulimar -e POSTGRES_PASSWORD=ex4men_db -p 5432:5432 -d postgres:14

Levantar pgAdmin:
docker run --name pgadmin -p 5050:80 --link servilimar_db:servilimar_db -e "PGADMIN_DEFAULT_EMAIL=usuario@servilimar.com" -e "PGADMIN_DEFAULT_PASSWORD=limar#123" -d dpage/pgadmin4

## Acceso pgAdmin
- http://localhost:5050
- usuario@servilimar.com / limar#123

## Archivos
- DDL.sql - creación de tablas
- DML.sql - inserción de datos
