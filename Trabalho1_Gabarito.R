################################################################################
# Gabarito - Trabalho 01 - Grafos e métricas de redes complexas
################################################################################

################################################################################
# Autor: Ricardo da Silva Braga
# Data : 03/04/2022
################################################################################

################################################################################
# Conforme visto em aula, para trabalhar com os grafos vamos usar a biblioteca
# igraph. O comando a seguir instala a biblioteca igraph. Mais informações sobre
# a instrução podem ser obtidas no link a seguir
# https://www.rdocumentation.org/packages/utils/versions/3.6.2/topics/install.packages
################################################################################

install.packages('igraph')

################################################################################
# Depois de instalada, preciso carregar a biblioteca para poder utilizar todas
# as suas funcionalidades. O comando a seguir carrega a biblioteca igraph.
# Mais informações sobre a instrução podem ser obtidas no link a seguir
# https://www.rdocumentation.org/packages/base/versions/3.6.2/topics/library
################################################################################

library(igraph)

################################################################################
# A matriz de adjacência criada para representar o grafo, já foi elaborada no
# bloco de notas como um arquivo csv. O comando a seguir permite que eu escolha
# o arquivo csv desejado (file.choose), lendo inicialmente como uma tabela 
# (read.table). Note que no meu arquivo, utilizei como separador o ponto e 
# vírgula. Além disso, considero que existe um cabeçalho (header = TRUE), onde 
# eu coloco os rótulos dos vértices de meu grafo. O parâmetro row.names, indica
# que na coluna 1 da minha matriz, estão os nomes das linhas, que são os rótulos 
# utilizados nos meus vértices. Mais informações sobre a instrução podem ser 
# obtidas no link a seguir.
# https://www.rdocumentation.org/packages/utils/versions/3.6.2/topics/read.table
################################################################################

matriz <- read.table(row.names=1,file=file.choose(),header = TRUE,sep = ';')

################################################################################
# Para verificar se a leitura da matriz foi feita corretamente pelo código, vou
# exibir a matriz utilizando a linha de comando a seguir
################################################################################

matriz

################################################################################
# Vamos ajustar o formato da matriz lida, para um formato adequado para o uso
# da biblioteca igraph. Converteremos a matriz que foi lida como uma tabela de 
# dados, para uma matriz. 
# Mais informações sobre a instrução podem ser obtidas no link a seguir
# https://www.rdocumentation.org/packages/data.table/versions/1.14.2/topics/as.matrix
################################################################################

matriz_de_adjacencia <- as.matrix(matriz)

################################################################################
# Agora vamos criar o nosso grafo usando a matriz de adjacencia escolhida. Para
# isso vamos usar a instrução vista em aula graph.adjacency. No nosso caso, o 
# grafo não é direcionado (mode='undirected'), e tem pesos (weighted=TRUE). 
# Mais informações sobre a instrução podem ser obtidas no link a seguir
# https://igraph.org/r/html/latest/graph_from_adjacency_matrix.html
################################################################################

grafo <- graph.adjacency(matriz_de_adjacencia, mode='undirected', weighted=TRUE)

################################################################################
# Apesar de termos usado em aula a instrução anterior, na documentação mais 
# recente do R, a instrução sugerida é graph_from_adjacency_matrix. 
# A seguir apresentamos seu uso como curiosidade, mas não era obrigatório nesse
# trabalho.
# Mais informações sobre a instrução podem ser obtidas no link a seguir
# https://igraph.org/r/html/latest/graph_from_adjacency_matrix.html
################################################################################

grafo <- graph_from_adjacency_matrix(matriz_de_adjacencia, mode='undirected', weighted=TRUE)

################################################################################
# De acordo com as instruções do trabalho, precisamos exibir o grafo utilizando
# necessariamente o comando tkplot. Para facilitar a visualização dos rótulos,
# usei uma cor diferente nos vértices.
# Mais informações sobre a instrução podem ser obtidas no link a seguir
# https://igraph.org/r/doc/tkplot.html
################################################################################

tkplot(grafo, vertex.color="light green")

################################################################################
# De acordo com as instruções do trabalho, precisamos calcular os graus de todos
# os vértices. Para isso utilizamos a instrução a seguir. 
# Mais informações sobre a instrução podem ser obtidas no link a seguir
# https://igraph.org/r/doc/degree.html
################################################################################

degree(grafo)

################################################################################
# De acordo com as instruções do trabalho, precisamos calcular a proximidade 
# de todos os vértices. Para isso utilizamos a instrução a seguir. 
# Mais informações sobre a instrução podem ser obtidas no link a seguir
# https://igraph.org/r/doc/closeness.html
################################################################################

closeness(grafo)

################################################################################
# Fim do Gabarito - Trabalho 01 - Grafos e métricas de redes complexas
# Código disponível no github a partir de 04/04/2022
# https://github.com/profbraga/graphs-social-networks
################################################################################
