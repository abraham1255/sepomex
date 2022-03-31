# API PYTHON-FLASK SEPOMEX
## Servicio que devuelve colonias, estados y municipios del catalogo de SEPOMEX

## INSTALACIÓN

### Base de Datos:
En el repositorio se encuentra un backup de la base de datos (sepomex.sql), se requiere restaurar dicha base de datos con el nombre de sepomex

Se puede montar la base de datos instalando postgresql en la maquina local o generar un contenedor con la base de datos importante montar volumenes para evitar perdida de datos.

## Despliegue de la API

Se requiere Python 3.10

Clonar el repositorio https://github.com/abraham1255/sepomex y crear entorno virtual

```
pip -m venv env
```

Activar entorno virtual Windows:

```sh
rutadelproyecto\env\scripts\activate.bat
```

Activar entorno virtual linux:

```sh
source env\scripts\activate
```
Instalar librerias 
```sh
pip install -r requirements.txt
```

Generar variables de ambiente para la conexion a base de datos y secret de Jwt
```sh
 set SQLALCHEMY_DATABASE_URI=postgresql://postgres:123456@localhost:5432/sepomex
 set JWT_SECRET_KEY=super-secret //change
```

Levantar aplicación 
```sh
 python main.py
```
## Endpoints

El proyecto contiene seguridad por medio de Jwt por lo que para poder acceder a los endpoints se debe pedir un token con los siguientes parametros:

| url | metodo |  parametros | 
| ------ | ------ |  ------ |
| http://localhost/api/v1/login | POST | {"username": "test","password":"test"}|

Para consultar los siguientes endpoints se debera colocar el token generado en los headers de la peticion ejemplo :

curl --location --request GET 'http://localhost/api/v1/colonias/1/5/10' \
--header 'Authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJmcmVzaCI6ZmFsc2UsImlhdCI6MTY0ODc2MjYwOCwianRpIjoiMmIzOWY4YzEtNDA3Ni00NDIzLWFiMWMtYzYxMWVjZDFmY2RmIiwidHlwZSI6ImFjY2VzcyIsInN1YiI6InRlc3QiLCJuYmYiOjE2NDg3NjI2MDgsImV4cCI6MTY0ODc2MzUwOH0.j-YkkgKm4AtKr02SnpiqT6d5nh2wtT4vAFLEWa97DjY'


| url | metodo |  parametros | 
| ------ | ------ |  ------ |
| http://localhost/api/v1/colonias/10000/1/10 | GET | El primer parametro corresponde a la busqueda es decir se esta buscando la colonia con el cp 10000, el segundo parametro indica que pagina se quiere obtener y el tercero cuantos registros deseas mostrar|
| http://localhost/api/v1/coloniasByName/pedregal/1/10| GET | El primer parametro corresponde a la busqueda es decir se esta buscando la colonia con el nombre pedregal, el segundo parametro indica que pagina se quiere obtener y el tercero cuantos registros deseas mostrar|
| http://localhost/api/v1/estadosByName/Aguascalientes/1/10| GET | El primer parametro corresponde a la busqueda es decir se esta buscando el estado con el nombre Aguascalientes, el segundo parametro indica que pagina se quiere obtener y el tercero cuantos registros deseas mostrar|
| http://localhost/api/v1/municipiosByName/Xochimilco/1/2| GET | El primer parametro corresponde a la busqueda es decir se esta buscando el municipio con el nombre Xochimilco, el segundo parametro indica que pagina se quiere obtener y el tercero cuantos registros deseas mostrar|

## CONSTRUIR IMAGEN EN DOCKER

Se debe contar con docker instalado en la maquina local

Colocarse en la raiz del proyecto a la altura del archivo Dockerfile

Para generar la imagen se utiliza el siguiente comando:

```sh
docker build -t abraham1255/sepomex:1.0 .
```

Para correr el contenedor apartir de la imagen se utiliza el siguiente comando:

```sh
docker run -p 8000:8000 --env SQLALCHEMY_DATABASE_URI=cadenadeconexionbd --env JWT_SECRET_KEY=secret-jwt abraham1255/sepomex:1.0 
```
Teniendo la imagen de la API construida se puede subir a DockerHub o cualquier repositorio y posteriormente montarlas en alguna plataforma que pueda orquestar contenedores.
