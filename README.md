# api-category

Este proyecto es una solución en Java que puede ser desplegada utilizando Docker. A continuación, se detallan los pasos para construir y levantar la solución.

## Requisitos Previos

Antes de comenzar, asegúrate de tener instalados los siguientes programas:

- [JDK 11 o superior](https://www.oracle.com/java/technologies/javase-jdk11-downloads.html)
- [Maven](https://maven.apache.org/download.cgi)
- [Docker](https://www.docker.com/get-started)

## Construcción del Proyecto

Para construir el proyecto, sigue estos pasos:

1. Clona el repositorio:

   ```bash
   git clone https://github.com/Ypz22/api-category.git
   cd api-category
   ```

2. Compila el proyecto utilizando Maven:

   ```bash
   mvn clean install
   ```

   Este comando descargará las dependencias necesarias y construirá el archivo JAR.

## Levantar la Solución con Docker

Para levantar la solución utilizando Docker, sigue estos pasos:

1. Asegúrate de estar en el directorio del proyecto donde se encuentra el `Dockerfile`.

2. Construye la imagen de Docker:

   ```bash
   docker build -t api-category .
   ```

3. Levanta el contenedor:

   ```bash
   docker run -d -p 8080:8080 api-category
   ```

   Esto ejecutará el contenedor en segundo plano y mapeará el puerto 8080 del contenedor al puerto 8080 de tu máquina local.

## Acceder a la Aplicación

Una vez que el contenedor esté en funcionamiento, puedes acceder a la aplicación en tu navegador web en la siguiente URL:

```
http://localhost:8080
```

## Contribuciones

Las contribuciones son bienvenidas. Si deseas contribuir, por favor abre un issue o envía un pull request.

## Licencia

Este proyecto no tiene una licencia especificada. Por favor, consulta con el propietario del repositorio para más detalles.
