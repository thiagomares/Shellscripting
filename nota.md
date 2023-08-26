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

- o Sed é um editor de filtragem e transformação de texto; Para deletar alguma linha, nos colocamos da seguinte forma: sed 'a, b, funcao' arquivo