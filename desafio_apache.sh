#!/bin/bash

echo "Atualizando o servidor"
apt-get update
apt-get upgrade -y

echo "Instalando o apache2"
apt-get install apache2 -y

echo "Instalando o unzip"
apt-get install unzip -y

echo "Baixando aplicacao"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Copiando arquivos da aplicacao no diretorio padrao do apache"
cd linux-site-dio-main
cp * /var/www/html/ -R

echo "Fim"
