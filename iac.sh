#!/bin/bash

echo "Criando Grupos [ GRP_ADM | GRP_VEN | GRP_SEC ]..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Grupos criados."

echo "Criando usuários do grupo ADMINISTRATIVO..."
useradd carlos -c "Carlos Fulano" -m -s /bin/bash -p $(openssl passwd AbC123) -G GRP_ADM
useradd maria -c "Maria de Tal" -m -s /bin/bash -p $(openssl passwd AbC123) -G GRP_ADM
useradd joao -c "João Silva" -m -s /bin/bash -p $(openssl passwd AbC123) -G GRP_ADM
echo "Usuários do grupo ADMINISTRATIVO criado."

echo "Criando usuários grupo VENDAS...:"
useradd sebastiana -c "Sebastiana Gomes" -m -s /bin/bash -p $(openssl passwd AbC123) -G GRP_VEN
useradd debora -c "Debora Feitosa" -m -s /bin/bash -p $(openssl passwd AbC123) -G GRP_VEN
useradd roberto -c "Roberto Gal" -m -s /bin/bash -p $(openssl passwd AbC123) -G GRP_VEN
echo "Usuários do grupo VENDAS criado."

echo "Criando usuários grupo SECRETARIADO...:"
useradd josefina -c "Josefina Siclana" -m -s /bin/bash -p $(openssl passwd AbC123) -G GRP_SEC
useradd amanda -c "Amanda Manda" -m -s /bin/bash -p $(openssl passwd AbC123) -G GRP_SEC
useradd rogerio -c "Rogerio Souza" -m -s /bin/bash -p $(openssl passwd AbC123) -G GRP_SEC
echo "Usuários do grupo SECRETARIADO criado."

echo "Criando PASTAS DE TRABALHO [ adm | ven | sec | publico ]...!!"
mkdir /publico /adm /ven /sec
echo "Pastas criadas."

echo "Configurando as PASTAS DE TRABALHO...."
chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

chmod 777 /publico/
chmod 770 /adm /ven /sec
echo "Configuração Finalizada!!!"