# Aula 02 - Laboratório de Grafos e Redes Sociais

# Fazendo o meu primeiro grafo

# Instalando a biblioteca igraph

install.packages('igraph')

# Carregando a biblioteca igraph

library(igraph)

# Permitir que o usuário escolha um arquivo CSV contendo a matriz de 
# adjacências

matriz1 <- read.table(row.names=1,file=file.choose(),header = TRUE,sep = ';')

# Exibindo a matriz, para verificarmos se os dados estão de acordo 
# com o esperado

matriz1

# Ajustamos a tabela inserida através de um arquivo CSV, para o formato
# de uma matriz.

matriz1 <- as.matrix(matriz1)

# Criando o objeto associado ao seu primeiro grafo, utilizando a 
# matriz de adjacência construída 

grafo1 <- graph.adjacency(matriz1, mode='undirected', weighted=TRUE)

# Plotando o grafo 

plot(grafo1)

# Exibindo o mesmo grafo com os valores da matriz de adjacência nas
# arestas

plot(grafo1, edge.label = round(E(grafo1)$weight,3))

# Exibindo o mesmo grafo através da ferramenta TKPLOT

tkplot(grafo1)

# Calculando as distâncias do grafo

distances(grafo1)
