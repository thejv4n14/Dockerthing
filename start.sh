#!/bin/bash

# Verificar que los archivos estén en su lugar
echo "Verificando archivos..."
ls -la /usr/share/nginx/html/network-control/

# Iniciar Nginx en primer plano
echo "Iniciando Nginx..."
nginx -g "daemon off;"
