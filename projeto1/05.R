# Estatistica Básica

# Parte 4 - Tabela de Frequencia  


# Carregando os Dados
dados <- read.table("Usuarios.csv",
                    dec = ".",
                    sep = ",",
                    h = T,
                    fileEncoding = "windows-1252")

# visualizando os dados
View(dados)
names(dados)
str(dados)
summary(dados$salario)
summary(dados$grau_instrucao)
mean(dados$salario)
mean(dados$grau_instrucao)

# Tabela de Frenquência Absolutas
freq <- table(dados$grau_instrucao)
View(freq)
# Tabela de Frenquência Relativas
freq_rel <- 100 * prop.table(freq)
View(freq_rel)
# Adicionar linha de total
View(freq)
freq <- c(freq, sum(freq))
View(freq)
names(freq)[4] <- "Total"
View(freq)

# Tabela final com todos os valores

# Calculamos frequencia relativa e frequencia proporcional
freq_rel <- c(freq_rel, sum(freq_rel)) 
p_freq_rel <- c(freq_rel, sum(freq_rel))

# Tabela final com todos os vetores
# cbind c=coluna, bind= ligação
tabela_final <- cbind(freq,
                      freq_rel = round(freq_rel, digits = 2),
                      p_freq_rel = round(p_freq_rel, digits = 2))
View(tabela_final)











