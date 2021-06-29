# Estatistica Basica

# Parte 1 - Medidas de Posicao

# Definindo a pasta de trabalho
# Substitua o caminho abaixo pela pasta no seu computador
setwd("C:/Users/alexandre/PowerBi/Cap12")
getwd()

# Carregar o dataset
vendas <- read.csv("vendas.csv", fileEncoding = "windows-1252")

# Resumo do dataset
View(vendas)
str(vendas)
summary(vendas$Valor)
summary(vendas$Custo)

# Media
?mean
mean(vendas$Valor)
mean(vendas$Custo)

# Media Ponderada
?weighted.mean
weighted.mean(vendas$Valor, w = vendas$Custo)

# Mediana
median(vendas$Valor)
median(vendas$Custo)

# Moda
# Criando funcao 
moda <- function(v){
  valor_unico <- unique(v)
  valor_unico[which.max(tabulate(match(v,valor_unico)))]
}

# Obtendo a Moda
resultado <- moda(vendas$Valor)
print(resultado)

resultado_custo <- moda(vendas$Custo)
print(resultado_custo)

# Criando grafico de Media de Valor Por Estado com ggplot2
install.packages("ggplot2") 
library(ggplot2) 

# Cria grafico
ggplot(vendas) + 
  stat_summary( aes(x = Estado,
                    y = Valor),
                fun = mean,
                geom = "bar",
                fill = "lightgreen",
                col = "grey50") +
  labs(title = "Media de Valor Por Estado")


