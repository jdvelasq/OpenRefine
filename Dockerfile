FROM openjdk:8

## Establece el directorio de trabajo en /app
# WORKDIR /app

## Copia el directorio actual en el host al directorio /app 
## en el contenedor
# COPY . /app

RUN wget -nv https://github.com/OpenRefine/OpenRefine/releases/download/3.1/openrefine-linux-3.1.tar.gz && \
    tar -xzf  openrefine-linux-3.1.tar.gz && \
    mv openrefine-3.1 /usr/local/openrefine-3.1 && \
    rm openrefine-linux-3.1.tar.gz

EXPOSE 3333

ENTRYPOINT ["/usr/local/openrefine-3.1/refine",  "-i", "0.0.0.0"]