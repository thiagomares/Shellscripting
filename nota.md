# Shell scripting

<!-- Principais comandos linux -->
Apenas relembrando coisas importantes do linux
- `ls` lista arquivos e diretórios. `-l` mostra mais detalhes, como o proprietário (usuários), grupo de
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