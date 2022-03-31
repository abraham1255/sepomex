Servicio que devuelve datos en formato JSON del los catalogos de SEPOMEX


Pasos para levantar la base de datos:
En el repositorio se encuentra un backup de la base de datos (sepomex.sql), se requiere restaurar dicha base de datos con el nombre de sepomex

Se puede montar la base de datos instalando postgresql en la maquina local o generar un contenedor con la base de datos importante montar volumenes para evitar perdida de datos.
----------------------------------------------------------------------------------------------------------------------------------------
Pasos para correr la api en entorno local (Desarrollo)

Tener instalado Python version 3.10
Hacer pull del repositorio: 
Generar entorno virtual pip -m venv env
Activar Entorno virtual 
    Windows: rutadelproyecto\env\scripts\activate.bat

Instalar librerias pip install -r requirements.txt
Revisar el archivo config.py en el se encuentran variables de entorno que se deben considerar y se deben crear en la maquina huesped o pasarlas como parametro al contenedor segun sea el caso.

Para lanzar la aplicacion se debe utilizar el siguiente comando:
    python main.py


Adicional se puede levantar el proyecto teniendo docker instalado de la siguiente manera:
    En la carpeta del proyecto ejecutar docker build -t abraham1255/sepomex:1.0 . 
    para generar la imagen 
    Para correr la imagen se puede utilizar el siguiente comando una vez construida la imagen
    docker run -p 8000:8000 abraham1255/sepomex:1.0 --env SQLALCHEMY_DATABASE_URI=cadenadeconexionbd --env JWT_SECRET_KEY=secret-jwt

Una vez teniendo la imagen de la API se puede subir a DockerHub o cualquier repositorio y posteriormente montarlas en alguna plataforma que pueda orquestar contenedores.