# VisorEquiposHibernate

Aplicación JavaFX que se conecta con Hibernate a la base de datos `ad` (MySQL) y muestra en un TableView todos los equipos de la tabla `Equipo`.

## Requisitos

- JDK 27
- Maven
- Docker Desktop

## Base de datos

En la carpeta `docker` está el `docker-compose.yml` con MySQL y el script `init/01-ad.sql`, que crea la base de datos `ad` con la tabla `Equipo` y sus datos.

1. Abrir Docker Desktop.
2. Ejecutar `docker/arrancar.bat` (o `docker compose up -d` dentro de la carpeta `docker`).
3. MySQL queda en `localhost:3306`, usuario `root`, contraseña `pwd`, base de datos `ad`.

Si se usa otra base de datos, cambiar la URL, el usuario y la contraseña en `src/main/resources/hibernate.cfg.xml`.

## Ejecutar

Abrir el proyecto en IntelliJ, recargar Maven y ejecutar la clase `Lanzador`.