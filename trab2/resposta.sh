#!/bin/bash

principal()
{

echo "Trabalho 2 - Bruna Toledo Guedes"
echo "--------------------------------"
echo "[1] Listar todo o conteudo da pasta atual"
echo "[2} Ver conteudo de um arquivo"
echo "[3] Testar se uma url está no ar"
echo "[0] Sair"
echo "Escolha uma opção"
read opcao
case $opcao in
     1) verPastaAtual ;;
     2) verConteudo ;;
     3) testarURL ;;
     0) exit ;;
     *) principal ;;
esac
}

verPastaAtual()
{
   echo "listando a pasta atual"
   ls
   echo
   principal
}

verConteudo()
{
   echo "ver conteudo"
   echo "qual o nome do arquivo que você desejar ver?"
   read arquivo
   if [ -e $arquivo ] 
   then 
      cat $arquivo
   else
      echo "arquivo não existe"
   fi
   echo
   principal
}

testarURL()
{
   echo "testar url"
   echo "Informe a URL para teste"
   read url
   if [ ! -z $url ]
   then
      ping -c 1 $url
      if [ $? -eq 0 ]
      then
        echo "A URL existe"
      else
        echo "A URL não existe"
      fi
   fi 
   echo 
   principal
}

clear
principal


