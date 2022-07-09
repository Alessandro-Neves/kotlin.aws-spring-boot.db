#!/bin/bash

echo "[ Creating imagem gestor/mysql ]"
sudo -H -u alessandro bash -c "docker build -f mysql.dockerfile -t gestor/mysql ."

echo "[ Running container gestor-mysql of gestor/mysql on 3306 ]"
sudo -H -u alessandro bash -c "docker run --name gestor-mysql -p 3306:3306 -d gestor/mysql"

echo "[ Doing dump on gesto-mysql of dump.sql ]"
sudo -H -u alessandro bash -c "cat dump.sql | docker exec -i gestor-mysql /usr/bin/mysql -u root --password=root novo_gestor_web"