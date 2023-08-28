# Shell scripting

<!-- Principais comandos linux -->
Apenas relembrando coisas importantes do linux
- `ls` lista arquivos e diretórios. `-l` mostra mais detalhes, como o proprietário (usuários), grupo de arquivos com -ltr
- ps axu mostra todos os processos ativos na maquina
- touch cria um arquivo branco ou muda o horario de um arquivo
- echo mostra na tela um parametro, o parametro -n nao faz uma quebra de linha, -e permite utilizar parametros especiais'
- o comando sleep é um contador
- o cat mostra o conteudo de um arquivo, -b enumera as linhas que nao estao em branco, -n enumera todas as linhas, -A mostra caracteres especiais e tabulações
- tac faz a mesma coisa do cat, porem ao contrario
- tail mostra o fim do arquivo mas passando um -{n} mostra um numero n de linhas
- o head ja mostra as primeiras linhas do arquivo, e passando um -n{n} passa o numero de linhas, e o -c{n} é a quantidade de caracteres
- wc conta o numero de linhas, palavras e caracteres. -l linhas, -w palavras -c caracteres.
- quando utilizamos o pipe |, nos utilizamos a saida de um comando como entrada de outro, como tail arquivo.ext| wc -w
- sort serve para ordenar um arquivo, e com o -r ele ordena de forma inversa, com o -k{n} seleciona o n indice para ordenar e o -t indica o separador quando passa esse separador com aspas duplas
- uniq mostra os valores unicos, e com o -u mostra as unicas ocorrencias de alguma coisa, e o -c mostra a contagem de cada um 
- whatis mostra um resumo daquele comando
- modifica uma letra por outra, ou fazer captalize ou algo semelhante
- o comando cut corta palavras de um arquivo a partir da sua posição com as flags -c{n}
- o Comando diff mostra a diferença entre dois arquivos
- o comando grep procura por uma string em um texto, porem ele é case sensitive, e para que nao tenhamos nenhum problema de case sensitive, utilizamos a flag -i. para contar o numero de ocorrencias, utilizamos -c. e para nao mostrar o que estamos buscando, utilizamos a flag -v. O -r faz a pesquisa recursiva e combinando com o l (-rl) ele retorna apenas em quais arquivos estao tendo aquela ocorrencia. Podemos utilizar a flag -a{n} sendo o n o numero de linhas, as linhas apos a ocorrencia que estamos buscando. O fgrep é mais leve
- o Sed é um editor de filtragem e transformação de texto; Para deletar alguma linha, nos colocamos da seguinte forma: sed 'a, b, funcao' <nome do arquivo>
- more <nome do arquivo> mostra todo o conteudo de forma paginada, ja o less <nomedoarquivo> mostra o arquivo por linha, mas da mesma forma que o more, porem podendo navegar
- find faz a busca de arquivos dentro da arvore de trabalho, na seguinte estrutura: find [estrutura de diretorios]  -tipodebusca {o que buscar}
- o comando date retorna a data, e caso incluimos a estrutura de regex que vemos em python com = "+%d" para dia, por exemplo
- o comando seq faz uma sequencia, na estrutura: seq valorinit [valor de pace] valorfim
- e por fim, mas nao menos importante, o comando de expr faz contas ou comparação, da seguinte forma: expr valorA conta valorB


<!-- fim dos comandos básicos -->
# Comandos sequenciais no bash

Nos vimos vários comandos, como utilizamos de forma sequencial comando a| comando b, mas podemos executar da segunte forma: comando a; comando b; comando c...
diferentemente do comando com pipe, ele nao vai cometer o erro caso o primeiro executar com erro. e utilizando os comandos de forma sequencial da seguinte forma: comando a && comando b, caso tenha erro no primeiro comando, ele vai travar todo o comando, bem na logica de programação, como utilizamos o ||, que indicamos para o computador um "ou"
caso o primeiro comando execute, nao executar o segundo. Podemos executar um subshell dentro do bash quando colocamos nossos comandos dentro de parentesis

# Redirecionamentos de entrada e saida
Todo programa tem uma entrada, uma saida e uma saida de erro (stdin, stdout e stderr), e para direcionar uma saida de um arquivo para um novo ou um arquivo existente, usamos o > ou >> e quando resolvemos redirecionar um erro, nos utilizamos o 2> (sim, dessa forma) e para o redirecionamento de entrada, utilizamos o comando < aliado ao comando tr.

# Variaveis de shell
O Shell trabalha com variaveis de ambiente, quando o sistema carrega. e nos conseguimos verificar todas as variaveis pelo comando env; e nos referenciamos a variavel com um $ e podemos declarar variaveis, seguindo as regras de programação, da seguinte forma: NomeDaVariavel=valor, sem nenhum tipo de espaço. quando mandamos fazer um echo de dois cifrões, nos temos o retorno do codigo da variavel que está sendo executada no momento
<!-- Exportando a variavel do bash -->
Utilizando o comando export nos vamos conseguir exportar as variaveis para outros bashes, e utilizando comandos para dentro da variavel, nos fazemos da seguinte forma: variavel=$(comandos que vao ser colocados na variavel) e o comando set ve todas as variaveis, enquanto as variaveis env ve todas as variaveis locais

# Regex
<!-- File Globbing x REGEX -->
O File Globbing é uma forma que o bash seleciona arquivos de diretorios na interface, utilizando caracteres especiais, como * no fim de um nome de arquivo que nao sabemos a extensão do arquivo

# Criando o arquivo
criamos o arquivo como vi nomedoarquivo.sh (e crie um padrão de nome de arquivo, como camelCase, PascalCase, snake_case), a primeira linha identifica qual vai ser o intepretador, da seguinte forma:

#!/bin/bash <!-- isso serve para definirmos onde essa pomba vai rodar, se vai ser no bash, no terminal do python, na casa do ... , e você pode ver essa diferença no arquivo "segundo script, onde nos rodamos um script python"-->

Para rodar nossos scripts, nos devemos inserir o ./ ou o path que está o nosso script, pois caso apenas digitando o nome do arquivo, ele nao vai simplesmente executar. Porem, caso inserirmos na variavel path os nossos scripts, ele vai rodar os scripts sem a necessidade de indicar o path que ele esta (até pq ja fizemos isso anteriormente)

# Comentários no script
Comentários são essenciais no script para entender o que caralhos aquela porra ta fazendo. Você precisa criar um cabeçalho, explicando oq aquilo faz, updates, etc...
<!-- 
#############################
#
# Segundo script - Script do curso de Shell Scripting
# Autor: Thiago Mares
# Data criação: 23/04/2023
# Descrição: Este é o segundo script. Ele irá imprimir um olá mundo no shell do python
#
#############################
-->

# Trabalhando com variaveis no codigo
Variaveis facilitam o trabalho do programador, uma vez que os valores podem mudar e que possivelmente nos veremos muitas mudanças, além de deixar o codigo mais legivel. Vamos ver a diferença disso:

<!-- Primeiro Script x Terceiro Script -->
<!-- 
    #!/bin/bash

clear
echo -n "Data e hora atual: "
date

 -->

 <!-- 
 #!/bin/bash

DATAHORA=$(date +%H:%M)
clear
echo "Exibir data e hora atual: $DATAHORA"
 -->

# Exit codes
Existem diversas saidas possiveis dentro do shell scripting, sendo 0 no errors, e QUALQUER COISA acima de 0 é um erro