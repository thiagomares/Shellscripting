#!/bin/bash

read -p "Digite seu nome: " NOME
echo "Bem vindo, $NOME"

# Podemos declarar varias variaveis de uma vez
echo "digite 3 valores"
var1=$1
var2=$2
echo "o que você escreveu foi: $var1 $var2"


# E podemos rodar nossas variaveis dentro de um echo, usando o sub bash

# Parametros
# $0 - Nome do programa
# $n - Valor da posição n (onde n é a ordem)
# $# - Quantidade de parametos
# $@ - Todos os parâmetros em uma string separados por espaco.
# $*  - Todos os parametros inseridos


echo "O script $0 recebeu $# parametros"
echo "Os parametros foram: $*"