# Estatistica Básica

# Parte 2 - Medidas de Dispersão

# Carregando o dataset

vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo do dataset
View(vendas)
str(vendas)
summary(vendas$Valor)
summary(vendas$Custo)

# Variância
var(vendas$Valor)

# Desvio Padrão
sd(vendas$Valor)



