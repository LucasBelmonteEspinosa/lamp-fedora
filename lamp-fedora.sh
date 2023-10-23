#!/bin/bash

sudo dnf update

# Instalación del servidor web Apache

sudo dnf install httpd -y

# Después de la instalación del servidor hay que iniciar el servicio.

sudo systemctl start httpd

# Y habilitar el servicio para que se inicie automáticamente después de cada reinicio.

sudo systemctl enable httpd

# Instalación del sistema gestor de bases de datos MySQL Server

sudo dnf install community-mysql-server -y

# Después de la instalación del servidor hay que iniciar el servicio.

sudo systemctl start mysqld

# Y habilitar el servicio para que se inicie automáticamente después de cada reinicio.

sudo systemctl enable mysqld

# Instalación de PHP

sudo dnf install php -y

# Instalamos la extensión de PHP para conectar con MySQL.

sudo dnf install php-mysqlnd -y

# Después de la instalación es necesario reiniciar el servicio de Apache.

sudo systemctl restart httpd
