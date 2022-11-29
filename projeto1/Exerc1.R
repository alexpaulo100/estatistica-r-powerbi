# Exercicio 1 Cap 12


notas <- read.csv("Notas.csv", fileEncoding = "windows-1252")



# 1.Apresente o Resumo de tipos de dados e estatiscas do dataset
View(notas)
str(notas)
summary(notas$TurmaA)
summary(notas$TurmaB)

# 2. Media de cada turma

mean(notas$TurmaA)
mean(notas$TurmaB)

# 3.Qual turma apresentou maior variabilidade de notas?
sd(notas$TurmaA) # usando desvio padrao
sd(notas$TurmaB)
# Resposta a turma A pq ela esta 14.48 pontos acima ou abaixo da media

# 4.Calcule o coeficiente de variação das 2 turmas
# Forumula é desvio padrao(sd) / (media) * 100

# Primeiro Calculando a media
media_TurmaA <- mean(notas$TurmaA)
media_TurmaB <- mean(notas$TurmaB)
# Depois calculando o desvio padrao
sd_TurmaA <- sd(notas$TurmaA)
sd_TurmaB <- sd(notas$TurmaB)
# Depois o coeficiente de variação das turmas
cvA <- sd_TurmaA / media_TurmaA * 100
cvB <- sd_TurmaB / media_TurmaB * 100
# Imprimir
cvA
cvB


# 5.Qual nota apareceu mais vezes em cada turma(Moda)
# Criar a função Moda
calculaModa <- function(v){
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}

calculaModa(notas$TurmaA) # 82 turmaA
calculaModa(notas$TurmaB) # 60 turmaB






