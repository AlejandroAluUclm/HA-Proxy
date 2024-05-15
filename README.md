# Instalación de HAproxy

A continuación se detallan los pasos para instalar y configurar HAproxy en sistemas basados en Debian/Ubuntu.

## Instalación

1. Actualiza la lista de paquetes:
    ```bash
    sudo apt update
    ```

2. Instala HAproxy:
    ```bash
    sudo apt install haproxy
    ```

3. Verifica la instalación:
    ```bash
    haproxy -v #verificación de instalación
    ```

## Configuración

Una vez instalado, puedes realizar cambios en la configuración de HAproxy editando el archivo de configuración principal:

```bash
sudo nano /etc/haproxy/haproxy.cfg
```

## Aplicación de cambios

Después de realizar cambios en el archivo de configuración, asegúrate de aplicarlos reiniciando el servicio de HAproxy:

```bash
sudo systemctl restart haproxy
```

## Verificación del estado

Para comprobar el estado de HAproxy, ejecuta:

```bash
sudo systemctl status haproxy
```

## Control del servicio

Puedes iniciar, detener o ver el estado de HAproxy utilizando el siguiente comando:

```bash
sudo systemctl "opcion" haproxy
```

Siendo las opciones:

1. **start**: Inicia el servicio.
2. **stop**: Detiene el servicio.
3. **restart**: Reinicia el servicio.
4. **status**: Muestra el estado actual del servicio.

# LINK VIDEO EVENTOS:
https://youtu.be/rDipsP6KWpA
