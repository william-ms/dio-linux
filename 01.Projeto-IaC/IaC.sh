#!/bin/bash

echo "Criando repositórios..."
mkdir /publico 777
mkdir /adm 770
mkdir /ven 770
mkdir /sec 770

echo "Criando grupos de usuários..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Definindo roots..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Adicionando usuários..."
useradd carlos -m -c "Carlos" -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_ADM
useradd maria -m -c "Maria" -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_ADM
useradd joao -m -c "João" -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_ADM

useradd debora -m -c "Débora" -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana" -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_VEN
useradd roberto -m -c "Roberto" -s /bin/bash -p $(openssl passwd -crypt 1234) -G -GRP_VEN

useradd josefina -m -c "Josefina" -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_SEC
useradd amanda -m -c "Amanda" -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_SEC
useradd rogerio -m -c "Rogério" -s /bin/bash -p $(openssl passwd -crypt 1234) -G GRP_SEC

echo "Fim!"