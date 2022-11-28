# Estatistica Básica

# Parte 3 - Medidas de Posição Relativa


setwd("C:/Users/padrao/OneDrive/Documentos/Curso-Power-BI-DSA/Cap12/projetos")
getwd()

# Carregando o dataset

vendas <- read.csv("Vendas.csv", fileEncoding = "windows-1252")

# Resumo do dataset
View(vendas)
str(vendas)
summary(vendas$Valor)
summary(vendas$Custo)

# Resumo de Dados
head(vendas)
tail(vendas)

# Medidas de Tendencia Central
summary(vendas$Valor)
summary(vendas[c('Valor', 'Custo')])

# Explorando variaveis numericas
mean(vendas$Valor)
median(vendas$Valor)
quantile(vendas$Valor)
quantile(vendas$Valor, probs = c(0.01, 0.90))
quantile(vendas$Valor, seq(from = 0, to = 1, by = 0.20))
IQR(vendas$Valor) # Diferença entre Q3 e Q1
range(vendas$Valor)
summary(vendas$Valor)
diff(range(vendas$Valor))

    