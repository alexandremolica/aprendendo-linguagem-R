# Estatitica Basica

# Parte 4 - Tabela de Frequencia

# Definindo a pasta de trabalho
setwd("C:/Users/alexandre/PowerBi/Cap12")
getwd()

# Carregando o dados
# para help da liguagem R. exemplo:  ?read.table
dados <- read.table("Usuarios.csv",
                    dec= ".",
                    sep= ",",
                    h= T,
                    fileEncoding = "windows-1252")

# Visualizando e sumarizando os dados
View(dados)
names(dados)
str(dados)
summary(dados$salario)
summary(dados$grau_instrucao) #variavel categorica nao possivel estatistica
mean(dados$salario)
mean(dados$grau_instrucao) #nao possivel variavel tipo categorico

# Tabela de Frequencias Absolutas
freq <- table(dados$grau_instrucao)
View(freq)

# Tabela de Frequencias Relativas
freq_rel <- prop.table(freq)
View(freq_rel)

# Porcentagem (100 * freq_rel_table)
p_freq_rel <-  100 * prop.table(freq_rel)
View(p_freq_rel)

# Adiciona linhas de total
View(freq)
freq <- c(freq, sum(freq))
View(freq)
names(freq)[4] <- "Total"
View(freq)

# Tabela final como todos os valores

# Calculamos frequencia relativa e frequencia proporcional
freq_rel <- c(freq_rel, sum(freq_rel))
p_freq_rel <- c(p_freq_rel, sum(p_freq_rel))

# Tabela final com todos os vetores
tabela_final <- cbind(freq,
                      freq_rel = round(freq_rel, digits = 2),
                      p_freq_rel = round(p_freq_rel,2))
View(tabela_final)




