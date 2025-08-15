# RedPanel

Demo de app web para tarea de Seguridad de Aplicaciones.

- Login y “sesión” en frontend (localStorage)
- Dockerizada con Nginx

## Estructura
- templates/ (HTML)
- nginx.conf, Dockerfile, docker-compose.yml, start.sh

## Ejecutar con imagen publicada
```bash
docker pull thejv4n14/redpanel:latest
sudo docker run -d --name redpanel -p 8080:80 thejv4n14/redpanel:latest
```

## Ejecutar local (build propio)
```bash
docker build -t thejv4n14/redpanel:latest .
docker run -d --name redpanel -p 8080:80 thejv4n14/redpanel:latest
```

## Enlaces
- Docker Hub: https://hub.docker.com/r/thejv4n14/redpanel

