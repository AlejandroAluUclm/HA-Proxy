# Dockerfile
FROM haproxy:latest

# Cambiar al usuario root para la instalación de paquetes
USER root

# Instalar dependencias necesarias
RUN apt-get update && \
    apt-get install -y lua5.3 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Crear el directorio de logs y dar permisos
RUN mkdir -p /var/log && \
    touch /var/log/haproxy_request.log && \
    chmod 777 /var/log/haproxy_request.log

# Copiar el archivo de configuración de HAProxy
COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

# Copiar el script Lua
COPY notify.lua /etc/haproxy/notify.lua

# Exponer el puerto de HAProxy
EXPOSE 80

# Comando para iniciar HAProxy
CMD ["haproxy", "-f", "/usr/local/etc/haproxy/haproxy.cfg"]
