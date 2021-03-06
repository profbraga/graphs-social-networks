##############################################################################
# Aula 04 - Laborat�rio de Grafos e Redes Sociais
# M�tricas em redes complexas
##############################################################################

# Se voc� ainda n�o instalou, precisa instalar a biblioteca igraph

install.packages('igraph')

# Carregando a biblioteca igraph

library(igraph)

# Permitir que o usuario escolha um arquivo CSV contendo a matriz de adjacencias

matriz1 <- read.table(row.names=1,file=file.choose(),header = TRUE,sep = ';')

# Exibindo a matriz, para verificar se os dados est�o de acordo com o esperado

matriz1

# Ajustamos a tabela inserida para o formato de uma matriz.

matriz1 <- as.matrix(matriz1)

# Criando o objeto associado ao seu primeiro grafo, utilizando a matriz  

grafo1 <- graph.adjacency(matriz1, mode='undirected', weighted=TRUE)

# Plotando o grafo 

plot(grafo1)

# Exibindo o mesmo grafo com os valores da matriz de adjacencia nas arestas

plot(grafo1, edge.label = round(E(grafo1)$weight,3))

# Exibindo o mesmo grafo através da ferramenta TKPLOT

tkplot(grafo1)

# Calculando o grau de cada vertice do grafo e exibindo ao usu�rio

degree(grafo1)

# Calculando a proximidade (closeness)

proximidade <- closeness(grafo1)
proximidade   # Exibindo a proximidade ao usu�rio
1/proximidade # Exibindo o inverso da proximidade

# Calculando a intermedia��o (betweenness) dos vertices

intermediacaoVertices <- betweenness(grafo1)
intermediacaoVertices

# Maior intermediacao
maiorIntermediacaoVertices <- max(intermediacaoVertices)
maiorIntermediacaoVertices

# Obtendo o v�rtice que possui a maior intermediacao
verticeDeMaiorIntermediacao <- which(intermediacaoVertices == maiorIntermediacaoVertices)
verticeDeMaiorIntermediacao

# Menor intermediacao
menorIntermediacaoVertices <- min(intermediacaoVertices)
menorIntermediacaoVertices

# Obtendo o v�rtice que possui a menor intermediacao
verticeDeMenorIntermediacao <- which(intermediacaoVertices == menorIntermediacaoVertices)
verticeDeMenorIntermediacao


# Calculando a intermedia��o (betweenness) das arestas
intermediacaoArestas <- edge.betweenness(grafo1)
intermediacaoArestas

# Histograma de distribui��o dos v�rtices
hist(intermediacaoVertices)

# Histograma de distribui��o das arestas
hist(intermediacaoArestas)


# Maior intermediacao das arestas
maiorIntermediacaoArestas <- max(intermediacaoArestas)
maiorIntermediacaoArestas

# Comando E lista as arestas com seus respectivos r�tulos
E(grafo1)

# Obtendo o v�rtice que possui a maior intermediacao
arestaDeMaiorIntermediacao <- which(intermediacaoArestas == maiorIntermediacaoArestas)
arestaDeMaiorIntermediacao

# Menor intermediacao das arestas
menorIntermediacaoArestas <- min(intermediacaoArestas)
menorIntermediacaoArestas

# Comando E lista as arestas com seus respectivos r�tulos
E(grafo1)

# Obtendo o v�rtice que possui a maior intermediacao
arestaDeMenorIntermediacao <- which(intermediacaoArestas == menorIntermediacaoArestas)
arestaDeMenorIntermediacao

# Comando vcount calcula o n�mero de v�rtices do grafo
vcount(grafo1)

# Comando ecount calcula o n�mero de v�rtices do grafo
ecount(grafo1)

# Comando E lista as arestas com seus respectivos r�tulos
E(grafo1)

intermediacaoArestas

# O m�todo distances calcula as distancias de cada um dos vertices a todos
# os demais


distancias <- distances(grafo1)
distancias

# O m�todo max calcula o m�ximo do argumento, no caso as dist�ncias do grafo1
maiorDistancia <- max(distancias)
maiorDistancia

# Obtendo o v�rtice que possui a maior dist�ncia
verticeDeMaiorDistancia <- which(distancias == maiorDistancia)
verticeDeMaiorDistancia


# O m�todo min calcula o m�nimo do argumento, no caso as dist�ncias do grafo1
minimo <- min(distancias)

# Histograma de distribui��o das dist�ncias
hist(distancias)

# Calculando os graus do grafo 1 
grau <- degree(grafo1)
grau

# Calculando o maior grau
maiorGrau <- max(grau)
maiorGrau

# Obtendo o v�rtice que possui o maior grau
verticeDeMaiorGrau <- which(grau == maiorGrau)
verticeDeMaiorGrau

# Calculando o menor grau
menorGrau <- min(grau)
menorGrau

# Obtendo o v�rtice que possui o menor grau
verticeDeMenorGrau <- which(grau == menorGrau)
verticeDeMenorGrau

# Obtendo a distribui��o dos graus dos v�rtices
hist(grau)

# Agora, vamos voltar � proximidade
# Atribui��o da proximidade
proximidade <- closeness(grafo1)
proximidade

# Atribu��o da maior proximidade
maior_proximidade <- max(proximidade)
maior_proximidade

# Identifica��o e exibi��o do v�rtice de maior proximidade
vertice_de_maior_proximidade <- which(proximidade == maior_proximidade)
vertice_de_maior_proximidade

# Atribu��o da menor proximidade
menor_proximidade <- min(proximidade)
menor_proximidade

# Identifica��o e exibi��o do v�rtice de menor proximidade
vertice_de_menor_proximidade <- which(proximidade == menor_proximidade)
vertice_de_menor_proximidade

# Distribui��o de proximidade
hist(proximidade)

# Di�metro de um grafo - fornece apenas o n�mero

diametro <- diameter(grafo1)
diametro

# Fornece a sequ�ncia de n�s que mostra o caminho associado ao di�metro

caminhoDoDiametro <- get_diameter(grafo1)
caminhoDoDiametro