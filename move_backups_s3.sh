#!/bin/zsh
#
#	Author: Engels Souza <engels.franca@gmail.com>
#	Script que copia os arquivos de backup específicos do mês de Outubro 2024 para um
#	diretorio próprio (Outubro), para facilitar a organização dos arquivos de backups
#	referente ao mês.
#

ORIGEM="s3://infopublic-backups/TS-Docker/"
DESTINO="s3://infopublic-backups/TS-Docker/2024/Outubro/"
FILE="outubro.2024.zip"

echo "movendo arquivos..."
sleep 1

for i in $(seq -w 1 31); do
	aws s3 mv "$ORIGEM""$i".$FILE $DESTINO
done

sleep 1
echo "Arquivos movidos para " $DESTINO
sleep 1
echo "done!"
