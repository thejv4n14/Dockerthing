# Usar imagen base más genérica y estable
FROM nginx:alpine

# Instalar Python3 y dependencias básicas
RUN apk add --no-cache \
    python3 \
    py3-pip \
    curl \
    bash

# Crear directorio de trabajo
WORKDIR /app

# Crear directorio para la aplicación web
RUN mkdir -p /usr/share/nginx/html/network-control

# Copiar archivos de la aplicación
COPY templates/ /usr/share/nginx/html/network-control/

# Configurar Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Crear script de inicio
COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh

# Exponer puerto 80
EXPOSE 80

# Comando para iniciar nginx
CMD ["/app/start.sh"]
