# Exercicio

# Definindo a pasta de trabalho
setwd("C:/Users/alexandre/PowerBi/Cap12")
getwd()

# Carregar o dataset
notas <- read.csv("notas.csv", fileEncoding = "windows-1252")

# Exercicio 1: Apresente um resumo de tipos de dados e estatistico do dataset
View(notas)
str(notas)
summary(notas$TurmaA)
summary(notas$TurmaB)

# Exercicio 2: Qual a media de cada turma?
mean(notas$TurmaA)
mean(notas$TurmaB)

# Exercicio 3: Qual turma apresentou maior variabilidade de nota? Justifique.
sd(notas$TurmaA)
sd(notas$TurmaB)
# Resposta: usou desvio padrao. A turmaA tem maior variabilidade
# porque em media as notas estao 14 pontos acima ou abaixo da 
# media da turma.
# Já a turmaB apresentou em media as notas estao 6 pontos acima ou 
# abaixo a media da turma.

# Exercicio 4 - Calcule o coeficiente de variacao das duas turmas
media_ta <- mean(notas$TurmaA)
media_tb <- mean(notas$TurmaB)

sd_ta <- sd(notas$TurmaA)
sd_tb <- sd(notas$TurmaB)

cvA <- sd_ta / media_ta * 100
cvB <- sd_tb / media_tb * 100

cvA
cvB

# Exercicio 5 - Qual nota apareceu mais vezes em cada turma?
calculaModa <- function (v){
  uniqv <- unique(v)
  uniqv [which.max(tabulate(match(v, uniqv)))]
}

calculaModa(notas$TurmaA)
calculaModa(notas$TurmaB)







