##############################################################################
# Aula 04 - Laboratório de Grafos e Redes Sociais
# Métricas em redes complexas
##############################################################################

# Se você ainda não instalou, precisa instalar a biblioteca igraph

install.packages('igraph')

# Carregando a biblioteca igraph

library(igraph)

# Permitir que o usuario escolha um arquivo CSV contendo a matriz de adjacencias

matriz1 <- read.table(row.names=1,file=file.choose(),header = TRUE,sep = ';')

# Exibindo a matriz, para verificar se os dados estão de acordo com o esperado

matriz1

# Ajustamos a tabela inserida para o formato de uma matriz.

matriz1 <- as.matrix(matriz1)

# Criando o objeto associado ao seu primeiro grafo, utilizando a matriz  

grafo1 <- graph.adjacency(matriz1, mode='undirected', weighted=TRUE)

# Plotando o grafo 

plot(grafo1)

# Exibindo o mesmo grafo com os valores da matriz de adjacencia nas arestas

plot(grafo1, edge.label = round(E(grafo1)$weight,3))

# Exibindo o mesmo grafo atravÃ©s da ferramenta TKPLOT

tkplot(grafo1)

# Calculando o grau de cada vertice do grafo e exibindo ao usuário

degree(grafo1)

# Calculando a proximidade (closeness)

proximidade <- closeness(grafo1)
proximidade   # Exibindo a proximidade ao usuário
1/proximidade # Exibindo o inverso da proximidade

# Calculando a intermediação (betweenness) dos vertices

intermediacaoVertices <- betweenness(grafo1)
intermediacaoVertices

# Maior intermediacao
maiorIntermediacaoVertices <- max(intermediacaoVertices)
maiorIntermediacaoVertices

# Obtendo o vértice que possui a maior intermediacao
verticeDeMaiorIntermediacao <- which(intermediacaoVertices == maiorIntermediacaoVertices)
verticeDeMaiorIntermediacao

# Menor intermediacao
menorIntermediacaoVertices <- min(intermediacaoVertices)
menorIntermediacaoVertices

# Obtendo o vértice que possui a menor intermediacao
verticeDeMenorIntermediacao <- which(intermediacaoVertices == menorIntermediacaoVertices)
verticeDeMenorIntermediacao


# Calculando a intermediação (betweenness) das arestas
intermediacaoArestas <- edge.betweenness(grafo1)
intermediacaoArestas

# Histograma de distribuição dos vértices
hist(intermediacaoVertices)

# Histograma de distribuição das arestas
hist(intermediacaoArestas)


# Maior intermediacao das arestas
maiorIntermediacaoArestas <- max(intermediacaoArestas)
maiorIntermediacaoArestas

# Comando E lista as arestas com seus respectivos rótulos
E(grafo1)

# Obtendo o vértice que possui a maior intermediacao
arestaDeMaiorIntermediacao <- which(intermediacaoArestas == maiorIntermediacaoArestas)
arestaDeMaiorIntermediacao

# Menor intermediacao das arestas
menorIntermediacaoArestas <- min(intermediacaoArestas)
menorIntermediacaoArestas

# Comando E lista as arestas com seus respectivos rótulos
E(grafo1)

# Obtendo o vértice que possui a maior intermediacao
arestaDeMenorIntermediacao <- which(intermediacaoArestas == menorIntermediacaoArestas)
arestaDeMenorIntermediacao

# Comando vcount calcula o número de vértices do grafo
vcount(grafo1)

# Comando ecount calcula o número de vértices do grafo
ecount(grafo1)

# Comando E lista as arestas com seus respectivos rótulos
E(grafo1)

intermediacaoArestas

# O método distances calcula as distancias de cada um dos vertices a todos
# os demais


distancias <- distances(grafo1)
distancias

# O método max calcula o máximo do argumento, no caso as distâncias do grafo1
maiorDistancia <- max(distancias)
maiorDistancia

# Obtendo o vértice que possui a maior distância
verticeDeMaiorDistancia <- which(distancias == maiorDistancia)
verticeDeMaiorDistancia


# O método min calcula o mínimo do argumento, no caso as distâncias do grafo1
minimo <- min(distancias)

# Histograma de distribuição das distâncias
hist(distancias)

# Calculando os graus do grafo 1 
grau <- degree(grafo1)
grau

# Calculando o maior grau
maiorGrau <- max(grau)
maiorGrau

# Obtendo o vértice que possui o maior grau
verticeDeMaiorGrau <- which(grau == maiorGrau)
verticeDeMaiorGrau

# Calculando o menor grau
menorGrau <- min(grau)
menorGrau

# Obtendo o vértice que possui o menor grau
verticeDeMenorGrau <- which(grau == menorGrau)
verticeDeMenorGrau

# Obtendo a distribuição dos graus dos vértices
hist(grau)

# Agora, vamos voltar à proximidade
# Atribuição da proximidade
proximidade <- closeness(grafo1)
proximidade

# Atribução da maior proximidade
maior_proximidade <- max(proximidade)
maior_proximidade

# Identificação e exibição do vértice de maior proximidade
vertice_de_maior_proximidade <- which(proximidade == maior_proximidade)
vertice_de_maior_proximidade

# Atribução da menor proximidade
menor_proximidade <- min(proximidade)
menor_proximidade

# Identificação e exibição do vértice de menor proximidade
vertice_de_menor_proximidade <- which(proximidade == menor_proximidade)
vertice_de_menor_proximidade

# Distribuição de proximidade
hist(proximidade)

# Diâmetro de um grafo - fornece apenas o número

diametro <- diameter(grafo1)
diametro

# Fornece a sequência de nós que mostra o caminho associado ao diâmetro

caminhoDoDiametro <- get_diameter(grafo1)
caminhoDoDiametro