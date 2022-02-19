# Primeiro script em R

# Somando dois números quaisquer

1+1

# Calculando o seno de um ângulo em radianos

sin(3.14)

# Fazendo um gráfico de dispersão dos números de 1 a 10

plot(1:10)

# Gerando dados para construir um histograma associado à distribuição normal
# Os parâmetros são: 1000 observações, média 0 e desvio padrão 1

ConjuntoDeDados1 <- rnorm(1000, mean = 0, sd = 1)

#Construção do histograma do conjunto anterior

hist(ConjuntoDeDados1)
