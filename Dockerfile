#Creamos una capa a partir de la ultima imagen de ubuntu de Docker.
FROM python:3.12.0
#Metadatos
LABEL maintainer="Bootcamp"
#Creamos el directorio principal de trabajo
RUN mkdir /app
#Establecemos el directorio de trabajo
WORKDIR /app
#Copiamos el programa en la carpeta
COPY crypto.py /app
#Instalo dependencias
# hadolint ignore=DL3013
RUN pip install --no-cache-dir cryptocompare
#El comando ejecutado sera python -m flask run --host 0.0.0.0, de esta forma podremos acceder de forma correcta al servicio
CMD ["python", "crypto.py"]