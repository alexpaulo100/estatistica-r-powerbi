# Estatistica Basica

# Parte 1 - Medidas de Posição


# Carregando o dataset

vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo do dataset
View(vendas)
str(vendas)
summary(vendas$Valor)
summary(vendas$Custo)

# Média
?mean #Documentação
mean(vendas$Valor)
mean(vendas$Custo)

# Média Ponderada
?weighted.mean
weighted.mean(vendas$Valor, w = vendas$Custo)

# Mediana

median(vendas$Valor)
median(vendas$Custo)

# Moda
# Criando uma função
moda <- function(v){
  valor_unico <- unique(v)
  valor_unico[which.max(tabulate(match(v, valor_unico)))]
}

# Obtendo a Moda

resultado <- moda(vendas$Valor)
print(resultado)

resultado_custo <- moda(vendas$Custo)
print(resultado_custo)

# Criando gráfico de Média de valor por Estado com ggplot2

install.packages("ggplot2")
library(ggplot2)

# Cria o gráfico

ggplot(vendas) + 
  stat_summary(aes(x = Estado,
                   y = Valor),
               fun = mean,
               geom = "bar",
               fill = "lightgreen",
               col = "grey50") + 
  labs(title = "Média de valor por Estado")











