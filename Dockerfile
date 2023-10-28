# Utiliza una imagen base de MySQL
FROM mysql:latest

# Establece la contraseña de root (cámbiala a una contraseña segura)
ENV MYSQL_ROOT_PASSWORD=your_root_password

# Establece el nombre de la base de datos que deseas crear
ENV MYSQL_DATABASE=tesis

# Copia el script SQL de inicialización al contenedor
COPY init.sql /docker-entrypoint-initdb.d/

EXPOSE 3306